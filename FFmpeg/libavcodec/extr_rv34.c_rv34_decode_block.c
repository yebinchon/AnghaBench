
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_9__ {int coefficient; TYPE_3__* third_pattern; TYPE_2__* second_pattern; TYPE_1__* first_pattern; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_7__ {int table; } ;
struct TYPE_6__ {int table; } ;
typedef TYPE_4__ RV34VLC ;
typedef int GetBitContext ;


 int decode_subblock (int *,int,int,int *,int *,int) ;
 int decode_subblock1 (int *,int,int *,int *,int) ;
 int decode_subblock3 (int *,int,int *,int *,int,int,int) ;
 int get_vlc2 (int *,int ,int,int) ;
 int* modulo_three_table ;

__attribute__((used)) static int rv34_decode_block(int16_t *dst, GetBitContext *gb, RV34VLC *rvlc, int fc, int sc, int q_dc, int q_ac1, int q_ac2)
{
    int code, pattern, has_ac = 1;

    code = get_vlc2(gb, rvlc->first_pattern[fc].table, 9, 2);

    pattern = code & 0x7;

    code >>= 3;

    if (modulo_three_table[code] & 0x3F) {
        decode_subblock3(dst, code, gb, &rvlc->coefficient, q_dc, q_ac1, q_ac2);
    } else {
        decode_subblock1(dst, code, gb, &rvlc->coefficient, q_dc);
        if (!pattern)
            return 0;
        has_ac = 0;
    }

    if(pattern & 4){
        code = get_vlc2(gb, rvlc->second_pattern[sc].table, 9, 2);
        decode_subblock(dst + 4*0+2, code, 0, gb, &rvlc->coefficient, q_ac2);
    }
    if(pattern & 2){
        code = get_vlc2(gb, rvlc->second_pattern[sc].table, 9, 2);
        decode_subblock(dst + 4*2+0, code, 1, gb, &rvlc->coefficient, q_ac2);
    }
    if(pattern & 1){
        code = get_vlc2(gb, rvlc->third_pattern[sc].table, 9, 2);
        decode_subblock(dst + 4*2+2, code, 0, gb, &rvlc->coefficient, q_ac2);
    }
    return has_ac | pattern;
}
