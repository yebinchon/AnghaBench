
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
typedef int GetBitContext ;


 int get_coeff_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int get_coeff(GetBitContext *gb, VLC *vlc)
{
    int val = get_vlc2(gb, vlc->table, vlc->bits, 2);

    return get_coeff_bits(gb, val);
}
