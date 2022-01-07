
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpio_int; int semphr_int; } ;
typedef TYPE_1__ slot_info_t ;
typedef scalar_t__ BaseType_t ;


 int gpio_intr_disable (int ) ;
 scalar_t__ pdFALSE ;
 int portYIELD_FROM_ISR () ;
 int xSemaphoreGiveFromISR (int ,scalar_t__*) ;

__attribute__((used)) static void gpio_intr(void* arg)
{
    BaseType_t awoken = pdFALSE;
    slot_info_t* slot = (slot_info_t*)arg;
    xSemaphoreGiveFromISR(slot->semphr_int, &awoken);
    gpio_intr_disable(slot->gpio_int);
    if (awoken) {
        portYIELD_FROM_ISR();
    }
}
