
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * gb; } ;
struct TYPE_5__ {int high; int get_number; int get_model_sym; TYPE_1__ gbc; scalar_t__ overread; int value; scalar_t__ low; } ;
typedef int GetBitContext ;
typedef TYPE_2__ ArithCoder ;


 int arith_get_model_sym ;
 int arith_get_number ;
 int get_bits (int *,int) ;

__attribute__((used)) static void arith_init(ArithCoder *c, GetBitContext *gb)
{
    c->low = 0;
    c->high = 0xFFFF;
    c->value = get_bits(gb, 16);
    c->overread = 0;
    c->gbc.gb = gb;
    c->get_model_sym = arith_get_model_sym;
    c->get_number = arith_get_number;
}
