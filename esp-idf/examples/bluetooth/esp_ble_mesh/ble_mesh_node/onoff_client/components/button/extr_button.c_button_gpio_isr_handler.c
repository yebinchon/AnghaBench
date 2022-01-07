
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ portBASE_TYPE ;
struct TYPE_6__ {int interval; int * tmr; } ;
struct TYPE_5__ {int interval; int * tmr; } ;
struct TYPE_7__ {int active_level; TYPE_2__ tap_rls_cb; TYPE_4__* cb_head; TYPE_1__ tap_psh_cb; int io_num; } ;
typedef TYPE_3__ button_dev_t ;
struct TYPE_8__ {int interval; struct TYPE_8__* next_cb; int * tmr; } ;
typedef TYPE_4__ button_cb_t ;


 int esp_timer_start_once (int *,int) ;
 int esp_timer_stop (int *) ;
 int gpio_get_level (int ) ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int portTICK_PERIOD_MS ;
 int portYIELD_FROM_ISR () ;
 int xTimerResetFromISR (int *,scalar_t__*) ;
 int xTimerStopFromISR (int *,scalar_t__*) ;

__attribute__((used)) static void button_gpio_isr_handler(void* arg)
{
    button_dev_t* btn = (button_dev_t*) arg;
    portBASE_TYPE HPTaskAwoken = pdFALSE;
    int level = gpio_get_level(btn->io_num);
    if (level == btn->active_level) {
        if (btn->tap_psh_cb.tmr) {

            xTimerStopFromISR(btn->tap_psh_cb.tmr, &HPTaskAwoken);
            xTimerResetFromISR(btn->tap_psh_cb.tmr, &HPTaskAwoken);




        }

        button_cb_t *pcb = btn->cb_head;
        while (pcb != ((void*)0)) {
            if (pcb->tmr != ((void*)0)) {

                xTimerStopFromISR(pcb->tmr, &HPTaskAwoken);
                xTimerResetFromISR(pcb->tmr, &HPTaskAwoken);




            }
            pcb = pcb->next_cb;
        }
    } else {

        if (btn->tap_rls_cb.tmr) {

            xTimerStopFromISR(btn->tap_rls_cb.tmr, &HPTaskAwoken);
            xTimerResetFromISR(btn->tap_rls_cb.tmr, &HPTaskAwoken);




        }
    }
    if(HPTaskAwoken == pdTRUE) {
        portYIELD_FROM_ISR();
    }
}
