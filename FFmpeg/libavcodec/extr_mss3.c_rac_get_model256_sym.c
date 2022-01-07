
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* secondary; unsigned int* freqs; } ;
struct TYPE_7__ {unsigned int range; unsigned int low; } ;
typedef TYPE_1__ RangeCoder ;
typedef TYPE_2__ Model256 ;


 unsigned int MODEL256_SEC_SCALE ;
 int MODEL_SCALE ;
 scalar_t__ RAC_BOTTOM ;
 int model256_update (TYPE_2__*,int) ;
 int rac_normalise (TYPE_1__*) ;

__attribute__((used)) static int rac_get_model256_sym(RangeCoder *c, Model256 *m)
{
    int val;
    int start, end;
    int ssym;
    unsigned prob, prob2, helper;

    prob2 = c->range;
    c->range >>= MODEL_SCALE;

    helper = c->low / c->range;
    ssym = helper >> MODEL256_SEC_SCALE;
    val = m->secondary[ssym];

    end = start = m->secondary[ssym + 1] + 1;
    while (end > val + 1) {
        ssym = (end + val) >> 1;
        if (m->freqs[ssym] <= helper) {
            end = start;
            val = ssym;
        } else {
            end = (end + val) >> 1;
            start = ssym;
        }
    }
    prob = m->freqs[val] * c->range;
    if (val != 255)
        prob2 = m->freqs[val + 1] * c->range;

    c->low -= prob;
    c->range = prob2 - prob;
    if (c->range < RAC_BOTTOM)
        rac_normalise(c);

    model256_update(m, val);

    return val;
}
