
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c; int a; } ;
typedef TYPE_1__ MqcState ;



__attribute__((used)) static void setbits(MqcState *mqc)
{
    int tmp = mqc->c + mqc->a;
    mqc->c |= 0xffff;
    if (mqc->c >= tmp)
        mqc->c -= 0x8000;
}
