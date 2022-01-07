
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
struct TYPE_6__ {int num_points; scalar_t__* lev_code; scalar_t__* loc_code; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AtracGainInfo ;
typedef int Atrac3pChanUnitCtx ;


 TYPE_1__* gain_vlc_tabs ;
 scalar_t__ get_bits (int *,int) ;
 scalar_t__ get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline void gainc_loc_mode1(GetBitContext *gb, Atrac3pChanUnitCtx *ctx,
                                   AtracGainInfo *dst)
{
    int i;
    VLC *tab;

    if (dst->num_points > 0) {

        dst->loc_code[0] = get_bits(gb, 5);

        for (i = 1; i < dst->num_points; i++) {


            tab = (dst->lev_code[i] <= dst->lev_code[i - 1])
                               ? &gain_vlc_tabs[7]
                               : &gain_vlc_tabs[9];
            dst->loc_code[i] = dst->loc_code[i - 1] +
                               get_vlc2(gb, tab->table, tab->bits, 1);
        }
    }
}
