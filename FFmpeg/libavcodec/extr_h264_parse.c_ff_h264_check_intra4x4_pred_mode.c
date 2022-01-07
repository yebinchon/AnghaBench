
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;



 int av_log (void*,int ,char*,int) ;
 int* scan8 ;

int ff_h264_check_intra4x4_pred_mode(int8_t *pred_mode_cache, void *logctx,
                                     int top_samples_available, int left_samples_available)
{
    static const int8_t top[12] = {
        -1, 0, 129, -1, -1, -1, -1, -1, 0
    };
    static const int8_t left[12] = {
        0, -1, 128, 0, -1, -1, -1, 0, -1, 130
    };
    int i;

    if (!(top_samples_available & 0x8000)) {
        for (i = 0; i < 4; i++) {
            int status = top[pred_mode_cache[scan8[0] + i]];
            if (status < 0) {
                av_log(logctx, AV_LOG_ERROR,
                       "top block unavailable for requested intra mode %d\n",
                       status);
                return AVERROR_INVALIDDATA;
            } else if (status) {
                pred_mode_cache[scan8[0] + i] = status;
            }
        }
    }

    if ((left_samples_available & 0x8888) != 0x8888) {
        static const int mask[4] = { 0x8000, 0x2000, 0x80, 0x20 };
        for (i = 0; i < 4; i++)
            if (!(left_samples_available & mask[i])) {
                int status = left[pred_mode_cache[scan8[0] + 8 * i]];
                if (status < 0) {
                    av_log(logctx, AV_LOG_ERROR,
                           "left block unavailable for requested intra4x4 mode %d\n",
                           status);
                    return AVERROR_INVALIDDATA;
                } else if (status) {
                    pred_mode_cache[scan8[0] + 8 * i] = status;
                }
            }
    }

    return 0;
}
