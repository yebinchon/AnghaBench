
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int order_hint_bits_minus_1; int enable_order_hint; } ;
typedef TYPE_1__ AV1RawSequenceHeader ;



__attribute__((used)) static int cbs_av1_get_relative_dist(const AV1RawSequenceHeader *seq,
                                     unsigned int a, unsigned int b)
{
    unsigned int diff, m;
    if (!seq->enable_order_hint)
        return 0;
    diff = a - b;
    m = 1 << seq->order_hint_bits_minus_1;
    diff = (diff & (m - 1)) - (diff & m);
    return diff;
}
