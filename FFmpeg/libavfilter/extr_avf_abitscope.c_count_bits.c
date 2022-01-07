
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {int * counter; } ;
typedef TYPE_1__ AudioBitScopeContext ;



__attribute__((used)) static void count_bits(AudioBitScopeContext *s, uint32_t sample, int max)
{
    int i;

    for (i = 0; i < max; i++) {
        if (sample & (1U << i))
            s->counter[i]++;
    }
}
