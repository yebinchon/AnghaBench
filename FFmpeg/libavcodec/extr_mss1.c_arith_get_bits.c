
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int high; int low; int value; } ;
typedef TYPE_1__ ArithCoder ;


 int arith_normalise (TYPE_1__*) ;

__attribute__((used)) static int arith_get_bits(ArithCoder *c, int bits)
{
    int range = c->high - c->low + 1;
    int val = (((c->value - c->low + 1) << bits) - 1) / range;
    int prob = range * val;

    c->high = ((prob + range) >> bits) + c->low - 1;
    c->low += prob >> bits;

    arith_normalise(c);

    return val;
}
