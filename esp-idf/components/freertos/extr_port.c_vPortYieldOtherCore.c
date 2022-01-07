
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BaseType_t ;


 int esp_crosscore_int_send_yield (int ) ;

void vPortYieldOtherCore( BaseType_t coreid ) {
 esp_crosscore_int_send_yield( coreid );
}
