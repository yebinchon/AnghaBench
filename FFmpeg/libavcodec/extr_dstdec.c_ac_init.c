
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; scalar_t__ overread; int c; } ;
typedef int GetBitContext ;
typedef TYPE_1__ ArithCoder ;


 int get_bits (int *,int) ;

__attribute__((used)) static void ac_init(ArithCoder *ac, GetBitContext *gb)
{
    ac->a = 4095;
    ac->c = get_bits(gb, 12);
    ac->overread = 0;
}
