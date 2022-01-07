
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lut_bits; int extra_bits; TYPE_1__* lut; } ;
struct TYPE_4__ {int bits; int lev; int run; } ;
typedef TYPE_2__ HQXAC ;
typedef int GetBitContext ;


 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static inline void hqx_get_ac(GetBitContext *gb, const HQXAC *ac,
                              int *run, int *lev)
{
    int val;

    val = show_bits(gb, ac->lut_bits);
    if (ac->lut[val].bits == -1) {
        GetBitContext gb2 = *gb;
        skip_bits(&gb2, ac->lut_bits);
        val = ac->lut[val].lev + show_bits(&gb2, ac->extra_bits);
    }
    *run = ac->lut[val].run;
    *lev = ac->lut[val].lev;
    skip_bits(gb, ac->lut[val].bits);
}
