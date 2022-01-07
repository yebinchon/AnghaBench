
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* contexts; unsigned int low; int range; } ;
typedef TYPE_1__ DiracArith ;


 scalar_t__** ff_dirac_prob_branchless ;
 int refill (TYPE_1__*) ;
 int renorm (TYPE_1__*) ;

__attribute__((used)) static inline int dirac_get_arith_bit(DiracArith *c, int ctx)
{
    int prob_zero = c->contexts[ctx];
    int range_times_prob, bit;
    unsigned low = c->low;
    int range = c->range;

    range_times_prob = (c->range * prob_zero) >> 16;
    bit = (low >> 16) >= range_times_prob;
    if (bit) {
        low -= range_times_prob << 16;
        range -= range_times_prob;
    } else {
        range = range_times_prob;
    }


    c->contexts[ctx] += ff_dirac_prob_branchless[prob_zero>>8][bit];
    c->low = low;
    c->range = range;

    renorm(c);
    refill(c);
    return bit;
}
