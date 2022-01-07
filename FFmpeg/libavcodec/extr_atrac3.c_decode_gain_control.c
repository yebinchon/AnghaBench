
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_points; int* lev_code; int* loc_code; } ;
struct TYPE_4__ {TYPE_2__* g_block; } ;
typedef int GetBitContext ;
typedef TYPE_1__ GainBlock ;
typedef TYPE_2__ AtracGainInfo ;


 int AVERROR_INVALIDDATA ;
 void* get_bits (int *,int) ;

__attribute__((used)) static int decode_gain_control(GetBitContext *gb, GainBlock *block,
                               int num_bands)
{
    int b, j;
    int *level, *loc;

    AtracGainInfo *gain = block->g_block;

    for (b = 0; b <= num_bands; b++) {
        gain[b].num_points = get_bits(gb, 3);
        level = gain[b].lev_code;
        loc = gain[b].loc_code;

        for (j = 0; j < gain[b].num_points; j++) {
            level[j] = get_bits(gb, 4);
            loc[j] = get_bits(gb, 5);
            if (j && loc[j] <= loc[j - 1])
                return AVERROR_INVALIDDATA;
        }
    }


    for (; b < 4 ; b++)
        gain[b].num_points = 0;

    return 0;
}
