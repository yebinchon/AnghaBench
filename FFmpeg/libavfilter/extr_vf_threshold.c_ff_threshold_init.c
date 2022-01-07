
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int bpc; int threshold; } ;
typedef TYPE_1__ ThresholdContext ;


 scalar_t__ ARCH_X86 ;
 int ff_threshold_init_x86 (TYPE_1__*) ;
 int threshold16 ;
 int threshold8 ;

void ff_threshold_init(ThresholdContext *s)
{
    if (s->depth == 8) {
        s->threshold = threshold8;
        s->bpc = 1;
    } else {
        s->threshold = threshold16;
        s->bpc = 2;
    }

    if (ARCH_X86)
        ff_threshold_init_x86(s);
}
