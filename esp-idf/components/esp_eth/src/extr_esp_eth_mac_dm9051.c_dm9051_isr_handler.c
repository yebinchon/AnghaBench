
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_task_hdl; } ;
typedef TYPE_1__ emac_dm9051_t ;
typedef scalar_t__ BaseType_t ;


 scalar_t__ pdFALSE ;
 int portYIELD_FROM_ISR () ;
 int vTaskNotifyGiveFromISR (int ,scalar_t__*) ;

__attribute__((used)) static void dm9051_isr_handler(void *arg)
{
    emac_dm9051_t *emac = (emac_dm9051_t *)arg;
    BaseType_t high_task_wakeup = pdFALSE;

    vTaskNotifyGiveFromISR(emac->rx_task_hdl, &high_task_wakeup);
    if (high_task_wakeup != pdFALSE) {
        portYIELD_FROM_ISR();
    }
}
