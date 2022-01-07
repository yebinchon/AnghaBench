
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {int a; int c; } ;
typedef TYPE_1__ MqcState ;


 size_t* ff_mqc_nlps ;
 size_t* ff_mqc_nmps ;
 int* ff_mqc_qe ;
 int renorme (TYPE_1__*) ;

void ff_mqc_encode(MqcState *mqc, uint8_t *cxstate, int d)
{
    int qe;

    qe = ff_mqc_qe[*cxstate];
    mqc->a -= qe;
    if ((*cxstate & 1) == d){
        if (!(mqc->a & 0x8000)){
            if (mqc->a < qe)
                mqc->a = qe;
            else
                mqc->c += qe;
            *cxstate = ff_mqc_nmps[*cxstate];
            renorme(mqc);
        } else
            mqc->c += qe;
    } else{
        if (mqc->a < qe)
            mqc->c += qe;
        else
            mqc->a = qe;
        *cxstate = ff_mqc_nlps[*cxstate];
        renorme(mqc);
    }
}
