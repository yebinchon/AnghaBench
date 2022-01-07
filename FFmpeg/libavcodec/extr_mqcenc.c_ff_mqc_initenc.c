
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int a; int* bp; int* bpstart; int ct; scalar_t__ c; } ;
typedef TYPE_1__ MqcState ;


 int ff_mqc_init_contexts (TYPE_1__*) ;

void ff_mqc_initenc(MqcState *mqc, uint8_t *bp)
{
    ff_mqc_init_contexts(mqc);
    mqc->a = 0x8000;
    mqc->c = 0;
    mqc->bp = bp-1;
    mqc->bpstart = bp;
    mqc->ct = 12 + (*mqc->bp == 0xff);
}
