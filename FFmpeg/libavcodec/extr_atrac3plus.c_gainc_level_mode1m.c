
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bits; int table; } ;
struct TYPE_4__ {int num_points; int* lev_code; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AtracGainInfo ;
typedef int Atrac3pChanUnitCtx ;


 TYPE_3__* gain_vlc_tabs ;
 void* get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline void gainc_level_mode1m(GetBitContext *gb,
                                      Atrac3pChanUnitCtx *ctx,
                                      AtracGainInfo *dst)
{
    int i, delta;

    if (dst->num_points > 0)
        dst->lev_code[0] = get_vlc2(gb, gain_vlc_tabs[2].table,
                                    gain_vlc_tabs[2].bits, 1);

    for (i = 1; i < dst->num_points; i++) {
        delta = get_vlc2(gb, gain_vlc_tabs[3].table,
                         gain_vlc_tabs[3].bits, 1);
        dst->lev_code[i] = (dst->lev_code[i - 1] + delta) & 0xF;
    }
}
