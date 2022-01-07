
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {int a; int c; scalar_t__ raw; } ;
typedef TYPE_1__ MqcState ;


 int exchange (TYPE_1__*,size_t*,int) ;
 scalar_t__* ff_mqc_qe ;
 int mqc_decode_bypass (TYPE_1__*) ;

int ff_mqc_decode(MqcState *mqc, uint8_t *cxstate)
{
    if (mqc->raw)
        return mqc_decode_bypass(mqc);
    mqc->a -= ff_mqc_qe[*cxstate];
    if ((mqc->c >> 16) < mqc->a) {
        if (mqc->a & 0x8000)
            return *cxstate & 1;
        else
            return exchange(mqc, cxstate, 0);
    } else {
        mqc->c -= mqc->a << 16;
        return exchange(mqc, cxstate, 1);
    }
}
