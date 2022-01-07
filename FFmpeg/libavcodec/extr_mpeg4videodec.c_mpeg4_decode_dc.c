
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int err_recognition; } ;
struct TYPE_9__ {int table; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_7__ {TYPE_6__* avctx; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_BITSTREAM ;
 int AV_EF_COMPLIANT ;
 int AV_LOG_ERROR ;
 int DC_VLC_BITS ;
 scalar_t__ IS_3IV1 ;
 int av_log (TYPE_6__*,int ,char*) ;
 TYPE_5__ dc_chrom ;
 TYPE_4__ dc_lum ;
 int ff_mpeg4_pred_dc (TYPE_1__*,int,int,int*,int ) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int get_xbits (int *,int) ;

__attribute__((used)) static inline int mpeg4_decode_dc(MpegEncContext *s, int n, int *dir_ptr)
{
    int level, code;

    if (n < 4)
        code = get_vlc2(&s->gb, dc_lum.table, DC_VLC_BITS, 1);
    else
        code = get_vlc2(&s->gb, dc_chrom.table, DC_VLC_BITS, 1);

    if (code < 0 || code > 9 ) {
        av_log(s->avctx, AV_LOG_ERROR, "illegal dc vlc\n");
        return AVERROR_INVALIDDATA;
    }

    if (code == 0) {
        level = 0;
    } else {
        if (IS_3IV1) {
            if (code == 1)
                level = 2 * get_bits1(&s->gb) - 1;
            else {
                if (get_bits1(&s->gb))
                    level = get_bits(&s->gb, code - 1) + (1 << (code - 1));
                else
                    level = -get_bits(&s->gb, code - 1) - (1 << (code - 1));
            }
        } else {
            level = get_xbits(&s->gb, code);
        }

        if (code > 8) {
            if (get_bits1(&s->gb) == 0) {
                if (s->avctx->err_recognition & (AV_EF_BITSTREAM|AV_EF_COMPLIANT)) {
                    av_log(s->avctx, AV_LOG_ERROR, "dc marker bit missing\n");
                    return AVERROR_INVALIDDATA;
                }
            }
        }
    }

    return ff_mpeg4_pred_dc(s, n, level, dir_ptr, 0);
}
