
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int range; int low; int* zero_state; int* one_state; } ;
typedef TYPE_1__ RangeCoder ;


 int refill (TYPE_1__*) ;

__attribute__((used)) static inline int get_rac(RangeCoder *c, uint8_t *const state)
{
    int range1 = (c->range * (*state)) >> 8;

    c->range -= range1;
    if (c->low < c->range) {
        *state = c->zero_state[*state];
        refill(c);
        return 0;
    } else {
        c->low -= c->range;
        *state = c->one_state[*state];
        c->range = range1;
        refill(c);
        return 1;
    }
}
