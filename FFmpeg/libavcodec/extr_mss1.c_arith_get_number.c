
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int high; int low; int value; } ;
typedef TYPE_1__ ArithCoder ;


 int arith_normalise (TYPE_1__*) ;

__attribute__((used)) static int arith_get_number(ArithCoder *c, int mod_val)
{
    int range = c->high - c->low + 1;
    int val = ((c->value - c->low + 1) * mod_val - 1) / range;
    int prob = range * val;

    c->high = (prob + range) / mod_val + c->low - 1;
    c->low += prob / mod_val;

    arith_normalise(c);

    return val;
}
