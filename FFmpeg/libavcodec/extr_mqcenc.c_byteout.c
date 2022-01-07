
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bp; int c; int ct; } ;
typedef TYPE_1__ MqcState ;



__attribute__((used)) static void byteout(MqcState *mqc)
{
retry:
    if (*mqc->bp == 0xff){
        mqc->bp++;
        *mqc->bp = mqc->c >> 20;
        mqc->c &= 0xfffff;
        mqc->ct = 7;
    } else if ((mqc->c & 0x8000000)){
        (*mqc->bp)++;
        mqc->c &= 0x7ffffff;
        goto retry;
    } else{
        mqc->bp++;
        *mqc->bp = mqc->c >> 19;
        mqc->c &= 0x7ffff;
        mqc->ct = 8;
    }
}
