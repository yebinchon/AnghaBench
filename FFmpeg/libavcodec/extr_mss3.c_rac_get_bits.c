
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; int low; } ;
typedef TYPE_1__ RangeCoder ;


 scalar_t__ RAC_BOTTOM ;
 int rac_normalise (TYPE_1__*) ;

__attribute__((used)) static int rac_get_bits(RangeCoder *c, int nbits)
{
    int val;

    c->range >>= nbits;
    val = c->low / c->range;
    c->low -= c->range * val;

    if (c->range < RAC_BOTTOM)
        rac_normalise(c);

    return val;
}
