
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int range; int* zero_state; int* one_state; int low; } ;
typedef TYPE_1__ RangeCoder ;


 int av_assert2 (int) ;
 int renorm_encoder (TYPE_1__*) ;

__attribute__((used)) static inline void put_rac(RangeCoder *c, uint8_t *const state, int bit)
{
    int range1 = (c->range * (*state)) >> 8;

    av_assert2(*state);
    av_assert2(range1 < c->range);
    av_assert2(range1 > 0);
    if (!bit) {
        c->range -= range1;
        *state = c->zero_state[*state];
    } else {
        c->low += c->range - range1;
        c->range = range1;
        *state = c->one_state[*state];
    }

    renorm_encoder(c);
}
