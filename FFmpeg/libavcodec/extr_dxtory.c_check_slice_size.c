
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RL32 (int const*) ;
 int av_log (int *,int ,char*,int,...) ;

__attribute__((used)) static int check_slice_size(AVCodecContext *avctx,
                            const uint8_t *src, int src_size,
                            int slice_size, int off)
{
    int cur_slice_size;

    if (slice_size > src_size - off) {
        av_log(avctx, AV_LOG_ERROR,
               "invalid slice size %d (only %d bytes left)\n",
               slice_size, src_size - off);
        return AVERROR_INVALIDDATA;
    }
    if (slice_size <= 16) {
        av_log(avctx, AV_LOG_ERROR, "invalid slice size %d\n",
               slice_size);
        return AVERROR_INVALIDDATA;
    }

    cur_slice_size = AV_RL32(src + off);
    if (cur_slice_size != slice_size - 16) {
        av_log(avctx, AV_LOG_ERROR,
               "Slice sizes mismatch: got %d instead of %d\n",
               cur_slice_size, slice_size - 16);
    }

    return 0;
}
