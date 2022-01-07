
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int raw; int* bp; int c; int a; } ;
typedef TYPE_1__ MqcState ;


 int bytein (TYPE_1__*) ;
 int ff_mqc_init_contexts (TYPE_1__*) ;

void ff_mqc_initdec(MqcState *mqc, uint8_t *bp, int raw, int reset)
{
    mqc->raw = raw;
    if (reset)
        ff_mqc_init_contexts(mqc);
    mqc->bp = bp;
    mqc->c = (*mqc->bp ^ 0xff) << 16;
    bytein(mqc);
    mqc->c = mqc->c << 7;
    mqc->a = 0x8000;
}
