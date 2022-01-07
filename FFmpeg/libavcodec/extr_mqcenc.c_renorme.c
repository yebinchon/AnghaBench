
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int ct; scalar_t__ c; } ;
typedef TYPE_1__ MqcState ;


 int byteout (TYPE_1__*) ;

__attribute__((used)) static void renorme(MqcState *mqc)
{
    do{
        mqc->a += mqc->a;
        mqc->c += mqc->c;
        if (!--mqc->ct)
            byteout(mqc);
    } while (!(mqc->a & 0x8000));
}
