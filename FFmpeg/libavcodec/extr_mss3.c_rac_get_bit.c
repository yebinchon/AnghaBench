
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; int low; } ;
typedef TYPE_1__ RangeCoder ;


 scalar_t__ RAC_BOTTOM ;
 int rac_normalise (TYPE_1__*) ;

__attribute__((used)) static int rac_get_bit(RangeCoder *c)
{
    int bit;

    c->range >>= 1;

    bit = (c->range <= c->low);
    if (bit)
        c->low -= c->range;

    if (c->range < RAC_BOTTOM)
        rac_normalise(c);

    return bit;
}
