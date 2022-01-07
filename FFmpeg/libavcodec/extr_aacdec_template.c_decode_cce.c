
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int table; } ;
struct TYPE_11__ {int coupling_point; size_t num_coupled; scalar_t__* type; size_t* id_select; size_t* ch_select; void*** gain; } ;
struct TYPE_10__ {TYPE_4__ coup; TYPE_2__* ch; } ;
struct TYPE_8__ {int num_window_groups; int max_sfb; } ;
struct TYPE_9__ {scalar_t__* band_type; TYPE_1__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef void* INTFLOAT ;
typedef int GetBitContext ;
typedef TYPE_3__ ChannelElement ;
typedef TYPE_4__ ChannelCoupling ;
typedef int AACContext ;


 int AFTER_IMDCT ;
 int AVERROR (int ) ;
 int ERANGE ;
 void* FIXR10 (int) ;
 int GET_GAIN (void*,int) ;
 scalar_t__ TYPE_CPE ;
 scalar_t__ TYPE_SCE ;
 scalar_t__ ZERO_BT ;
 int abs (void*) ;
 void** cce_scale ;
 int decode_ics (int *,TYPE_2__*,int *,int ,int ) ;
 size_t get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int,int) ;
 TYPE_5__ vlc_scalefactors ;

__attribute__((used)) static int decode_cce(AACContext *ac, GetBitContext *gb, ChannelElement *che)
{
    int num_gain = 0;
    int c, g, sfb, ret;
    int sign;
    INTFLOAT scale;
    SingleChannelElement *sce = &che->ch[0];
    ChannelCoupling *coup = &che->coup;

    coup->coupling_point = 2 * get_bits1(gb);
    coup->num_coupled = get_bits(gb, 3);
    for (c = 0; c <= coup->num_coupled; c++) {
        num_gain++;
        coup->type[c] = get_bits1(gb) ? TYPE_CPE : TYPE_SCE;
        coup->id_select[c] = get_bits(gb, 4);
        if (coup->type[c] == TYPE_CPE) {
            coup->ch_select[c] = get_bits(gb, 2);
            if (coup->ch_select[c] == 3)
                num_gain++;
        } else
            coup->ch_select[c] = 2;
    }
    coup->coupling_point += get_bits1(gb) || (coup->coupling_point >> 1);

    sign = get_bits(gb, 1);



    scale = cce_scale[get_bits(gb, 2)];


    if ((ret = decode_ics(ac, sce, gb, 0, 0)))
        return ret;

    for (c = 0; c < num_gain; c++) {
        int idx = 0;
        int cge = 1;
        int gain = 0;
        INTFLOAT gain_cache = FIXR10(1.);
        if (c) {
            cge = coup->coupling_point == AFTER_IMDCT ? 1 : get_bits1(gb);
            gain = cge ? get_vlc2(gb, vlc_scalefactors.table, 7, 3) - 60: 0;
            gain_cache = GET_GAIN(scale, gain);




        }
        if (coup->coupling_point == AFTER_IMDCT) {
            coup->gain[c][0] = gain_cache;
        } else {
            for (g = 0; g < sce->ics.num_window_groups; g++) {
                for (sfb = 0; sfb < sce->ics.max_sfb; sfb++, idx++) {
                    if (sce->band_type[idx] != ZERO_BT) {
                        if (!cge) {
                            int t = get_vlc2(gb, vlc_scalefactors.table, 7, 3) - 60;
                            if (t) {
                                int s = 1;
                                t = gain += t;
                                if (sign) {
                                    s -= 2 * (t & 0x1);
                                    t >>= 1;
                                }
                                gain_cache = GET_GAIN(scale, t) * s;




                            }
                        }
                        coup->gain[c][idx] = gain_cache;
                    }
                }
            }
        }
    }
    return 0;
}
