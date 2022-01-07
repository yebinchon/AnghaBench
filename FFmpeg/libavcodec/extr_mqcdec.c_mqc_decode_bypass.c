
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ MqcState ;


 int bytein (TYPE_1__*) ;

__attribute__((used)) static int mqc_decode_bypass(MqcState *mqc) {
    int bit = !(mqc->c & 0x40000000);
    if (!(mqc->c & 0xff)) {
        mqc->c -= 0x100;
        bytein(mqc);
    }
    mqc->c += mqc->c;
    return bit;
}
