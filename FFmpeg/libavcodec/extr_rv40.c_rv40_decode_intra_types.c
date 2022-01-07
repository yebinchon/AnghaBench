
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_11__ {int table; } ;
struct TYPE_10__ {int table; } ;
struct TYPE_9__ {int table; } ;
struct TYPE_8__ {scalar_t__ first_slice_line; } ;
struct TYPE_7__ {int intra_types_stride; TYPE_2__ s; } ;
typedef TYPE_1__ RV34DecContext ;
typedef TYPE_2__ MpegEncContext ;
typedef int GetBitContext ;


 int AIC_MODE1_BITS ;
 int AIC_MODE2_BITS ;
 int AIC_TOP_BITS ;
 int MODE2_PATTERNS_NUM ;
 TYPE_6__* aic_mode1_vlc ;
 TYPE_5__* aic_mode2_vlc ;
 TYPE_4__ aic_top_vlc ;
 int get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int* rv40_aic_table_index ;

__attribute__((used)) static int rv40_decode_intra_types(RV34DecContext *r, GetBitContext *gb, int8_t *dst)
{
    MpegEncContext *s = &r->s;
    int i, j, k, v;
    int A, B, C;
    int pattern;
    int8_t *ptr;

    for(i = 0; i < 4; i++, dst += r->intra_types_stride){
        if(!i && s->first_slice_line){
            pattern = get_vlc2(gb, aic_top_vlc.table, AIC_TOP_BITS, 1);
            dst[0] = (pattern >> 2) & 2;
            dst[1] = (pattern >> 1) & 2;
            dst[2] = pattern & 2;
            dst[3] = (pattern << 1) & 2;
            continue;
        }
        ptr = dst;
        for(j = 0; j < 4; j++){






            A = ptr[-r->intra_types_stride + 1];
            B = ptr[-r->intra_types_stride];
            C = ptr[-1];
            pattern = A + B * (1 << 4) + C * (1 << 8);
            for(k = 0; k < MODE2_PATTERNS_NUM; k++)
                if(pattern == rv40_aic_table_index[k])
                    break;
            if(j < 3 && k < MODE2_PATTERNS_NUM){
                v = get_vlc2(gb, aic_mode2_vlc[k].table, AIC_MODE2_BITS, 2);
                *ptr++ = v/9;
                *ptr++ = v%9;
                j++;
            }else{
                if(B != -1 && C != -1)
                    v = get_vlc2(gb, aic_mode1_vlc[B + C*10].table, AIC_MODE1_BITS, 1);
                else{
                    v = 0;
                    switch(C){
                    case -1:
                        if(B < 2)
                            v = get_bits1(gb) ^ 1;
                        break;
                    case 0:
                    case 2:
                        v = (get_bits1(gb) ^ 1) << 1;
                        break;
                    }
                }
                *ptr++ = v;
            }
        }
    }
    return 0;
}
