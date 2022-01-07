
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int esc3_level_length; int esc3_run_length; int gb; } ;
struct TYPE_6__ {int pq; TYPE_1__ s; scalar_t__ dquantfrm; } ;
typedef TYPE_2__ VC1Context ;
struct TYPE_7__ {int table; } ;
typedef int GetBitContext ;


 int AC_VLC_BITS ;
 int AVERROR_INVALIDDATA ;
 int decode210 (int *) ;
 TYPE_4__* ff_vc1_ac_coeff_table ;
 int* ff_vc1_ac_sizes ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int get_unary (int *,int,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 scalar_t__** vc1_delta_level_table ;
 scalar_t__** vc1_delta_run_table ;
 int*** vc1_index_decode_table ;
 int* vc1_last_decode_table ;
 scalar_t__** vc1_last_delta_level_table ;
 scalar_t__** vc1_last_delta_run_table ;

__attribute__((used)) static int vc1_decode_ac_coeff(VC1Context *v, int *last, int *skip,
                                int *value, int codingset)
{
    GetBitContext *gb = &v->s.gb;
    int index, run, level, lst, sign;

    index = get_vlc2(gb, ff_vc1_ac_coeff_table[codingset].table, AC_VLC_BITS, 3);
    if (index < 0)
        return index;
    if (index != ff_vc1_ac_sizes[codingset] - 1) {
        run = vc1_index_decode_table[codingset][index][0];
        level = vc1_index_decode_table[codingset][index][1];
        lst = index >= vc1_last_decode_table[codingset] || get_bits_left(gb) < 0;
        sign = get_bits1(gb);
    } else {
        int escape = decode210(gb);
        if (escape != 2) {
            index = get_vlc2(gb, ff_vc1_ac_coeff_table[codingset].table, AC_VLC_BITS, 3);
            if (index >= ff_vc1_ac_sizes[codingset] - 1U)
                return AVERROR_INVALIDDATA;
            run = vc1_index_decode_table[codingset][index][0];
            level = vc1_index_decode_table[codingset][index][1];
            lst = index >= vc1_last_decode_table[codingset];
            if (escape == 0) {
                if (lst)
                    level += vc1_last_delta_level_table[codingset][run];
                else
                    level += vc1_delta_level_table[codingset][run];
            } else {
                if (lst)
                    run += vc1_last_delta_run_table[codingset][level] + 1;
                else
                    run += vc1_delta_run_table[codingset][level] + 1;
            }
            sign = get_bits1(gb);
        } else {
            lst = get_bits1(gb);
            if (v->s.esc3_level_length == 0) {
                if (v->pq < 8 || v->dquantfrm) {
                    v->s.esc3_level_length = get_bits(gb, 3);
                    if (!v->s.esc3_level_length)
                        v->s.esc3_level_length = get_bits(gb, 2) + 8;
                } else {
                    v->s.esc3_level_length = get_unary(gb, 1, 6) + 2;
                }
                v->s.esc3_run_length = 3 + get_bits(gb, 2);
            }
            run = get_bits(gb, v->s.esc3_run_length);
            sign = get_bits1(gb);
            level = get_bits(gb, v->s.esc3_level_length);
        }
    }

    *last = lst;
    *skip = run;
    *value = (level ^ -sign) + sign;

    return 0;
}
