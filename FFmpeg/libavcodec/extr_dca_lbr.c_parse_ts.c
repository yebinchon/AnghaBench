
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max_mono_subband; int* sb_indices; int limited_range; int nsubbands; int g3_avg_only_start_sb; int min_mono_subband; int** quant_levels; int gb; void*** sec_ch_lrms; void*** sec_ch_sbms; } ;
typedef TYPE_1__ DCALbrDecoder ;


 scalar_t__ ensure_bits (int *,int) ;
 void* get_bits (int *,int) ;
 int parse_ch (TYPE_1__*,int,int,int,int) ;
 int parse_grid_3 (TYPE_1__*,int,int,int,int) ;

__attribute__((used)) static int parse_ts(DCALbrDecoder *s, int ch1, int ch2,
                    int start_sb, int end_sb, int flag)
{
    int sb, sb_g3, sb_reorder, quant_level;

    for (sb = start_sb; sb < end_sb; sb++) {

        if (sb < 6) {
            sb_reorder = sb;
        } else if (flag && sb < s->max_mono_subband) {
            sb_reorder = s->sb_indices[sb];
        } else {
            if (ensure_bits(&s->gb, 28))
                break;
            sb_reorder = get_bits(&s->gb, s->limited_range + 3);
            if (sb_reorder < 6)
                sb_reorder = 6;
            s->sb_indices[sb] = sb_reorder;
        }
        if (sb_reorder >= s->nsubbands)
            return -1;


        if (sb == 12) {
            for (sb_g3 = 0; sb_g3 < s->g3_avg_only_start_sb - 4; sb_g3++)
                parse_grid_3(s, ch1, ch2, sb_g3, flag);
        } else if (sb < 12 && sb_reorder >= 4) {
            parse_grid_3(s, ch1, ch2, sb_reorder - 4, flag);
        }


        if (ch1 != ch2) {
            if (ensure_bits(&s->gb, 20))
                break;
            if (!flag || sb_reorder >= s->max_mono_subband)
                s->sec_ch_sbms[ch1 / 2][sb_reorder] = get_bits(&s->gb, 8);
            if (flag && sb_reorder >= s->min_mono_subband)
                s->sec_ch_lrms[ch1 / 2][sb_reorder] = get_bits(&s->gb, 8);
        }

        quant_level = s->quant_levels[ch1 / 2][sb];
        if (!quant_level)
            return -1;


        if (sb < s->max_mono_subband && sb_reorder >= s->min_mono_subband) {
            if (!flag)
                parse_ch(s, ch1, sb_reorder, quant_level, 0);
            else if (ch1 != ch2)
                parse_ch(s, ch2, sb_reorder, quant_level, 1);
        } else {
            parse_ch(s, ch1, sb_reorder, quant_level, 0);
            if (ch1 != ch2)
                parse_ch(s, ch2, sb_reorder, quant_level, 0);
        }
    }

    return 0;
}
