
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pb; } ;
struct TYPE_6__ {int num_windows; int max_sfb; scalar_t__* group_len; } ;
struct TYPE_7__ {int* sf_idx; scalar_t__* band_type; int * zeroes; TYPE_1__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef int AVCodecContext ;
typedef TYPE_3__ AACEncContext ;


 scalar_t__ INTENSITY_BT ;
 scalar_t__ INTENSITY_BT2 ;
 scalar_t__ NOISE_BT ;
 int NOISE_OFFSET ;
 scalar_t__ NOISE_PRE ;
 int NOISE_PRE_BITS ;
 scalar_t__ SCALE_DIFF_ZERO ;
 int av_assert0 (int) ;
 int * ff_aac_scalefactor_bits ;
 scalar_t__* ff_aac_scalefactor_code ;
 int put_bits (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_scale_factors(AVCodecContext *avctx, AACEncContext *s,
                                 SingleChannelElement *sce)
{
    int diff, off_sf = sce->sf_idx[0], off_pns = sce->sf_idx[0] - NOISE_OFFSET;
    int off_is = 0, noise_flag = 1;
    int i, w;

    for (w = 0; w < sce->ics.num_windows; w += sce->ics.group_len[w]) {
        for (i = 0; i < sce->ics.max_sfb; i++) {
            if (!sce->zeroes[w*16 + i]) {
                if (sce->band_type[w*16 + i] == NOISE_BT) {
                    diff = sce->sf_idx[w*16 + i] - off_pns;
                    off_pns = sce->sf_idx[w*16 + i];
                    if (noise_flag-- > 0) {
                        put_bits(&s->pb, NOISE_PRE_BITS, diff + NOISE_PRE);
                        continue;
                    }
                } else if (sce->band_type[w*16 + i] == INTENSITY_BT ||
                           sce->band_type[w*16 + i] == INTENSITY_BT2) {
                    diff = sce->sf_idx[w*16 + i] - off_is;
                    off_is = sce->sf_idx[w*16 + i];
                } else {
                    diff = sce->sf_idx[w*16 + i] - off_sf;
                    off_sf = sce->sf_idx[w*16 + i];
                }
                diff += SCALE_DIFF_ZERO;
                av_assert0(diff >= 0 && diff <= 120);
                put_bits(&s->pb, ff_aac_scalefactor_bits[diff], ff_aac_scalefactor_code[diff]);
            }
        }
    }
}
