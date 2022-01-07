
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; int low; scalar_t__ counter; } ;
typedef TYPE_1__ DiracArith ;


 int av_log2_16bit (int) ;

__attribute__((used)) static inline void renorm(DiracArith *c)
{







    while (c->range <= 0x4000) {
        c->low <<= 1;
        c->range <<= 1;
        c->counter++;
    }

}
