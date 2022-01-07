
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* ccitt_vlc ;
 int decode_uncompressed (int *,int *,unsigned int*,int**,int const*,int*) ;
 unsigned int get_vlc2 (int *,int ,int,int) ;
 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_group3_1d_line(AVCodecContext *avctx, GetBitContext *gb,
                                 unsigned int pix_left, int *runs,
                                 const int *runend)
{
    int mode = 0;
    unsigned int run = 0;
    unsigned int t;
    for (;;) {
        t = get_vlc2(gb, ccitt_vlc[mode].table, 9, 2);
        run += t;
        if (t < 64) {
            *runs++ = run;
            if (runs >= runend) {
                av_log(avctx, AV_LOG_ERROR, "Run overrun\n");
                return AVERROR_INVALIDDATA;
            }
            if (pix_left <= run) {
                if (pix_left == run)
                    break;
                av_log(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            pix_left -= run;
            run = 0;
            mode = !mode;
        } else if ((int)t == -1) {
            if (show_bits(gb, 12) == 15) {
                int ret;
                skip_bits(gb, 12);
                ret = decode_uncompressed(avctx, gb, &pix_left, &runs, runend, &mode);
                if (ret < 0) {
                    return ret;
                } else if (ret)
                    break;
            } else {
                av_log(avctx, AV_LOG_ERROR, "Incorrect code\n");
                return AVERROR_INVALIDDATA;
            }
        }
    }
    *runs++ = 0;
    return 0;
}
