
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int,int) ;

__attribute__((used)) static inline void decode_coeff(int16_t *dst, int coef, int esc, GetBitContext *gb, VLC* vlc, int q)
{
    if(coef){
        if(coef == esc){
            coef = get_vlc2(gb, vlc->table, 9, 2);
            if(coef > 23){
                coef -= 23;
                coef = 22 + ((1 << coef) | get_bits(gb, coef));
            }
            coef += esc;
        }
        if(get_bits1(gb))
            coef = -coef;
        *dst = (coef*q + 8) >> 4;
    }
}
