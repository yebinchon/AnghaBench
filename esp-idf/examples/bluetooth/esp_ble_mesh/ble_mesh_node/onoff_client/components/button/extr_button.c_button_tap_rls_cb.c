
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int arg; int (* cb ) (int ) ;int * tmr; } ;
struct TYPE_7__ {int arg; int (* cb ) (int ) ;} ;
struct TYPE_6__ {int * tmr; } ;
struct TYPE_9__ {scalar_t__ active_level; scalar_t__ state; TYPE_3__ tap_rls_cb; TYPE_2__ tap_short_cb; TYPE_1__ press_serial_cb; TYPE_5__* cb_head; int io_num; } ;
typedef TYPE_4__ button_dev_t ;
struct TYPE_10__ {struct TYPE_10__* next_cb; int * tmr; TYPE_4__* pbtn; } ;
typedef TYPE_5__ button_cb_t ;


 scalar_t__ BUTTON_STATE_IDLE ;
 scalar_t__ BUTTON_STATE_PUSH ;
 int STOP_TIMER (int *) ;
 scalar_t__ gpio_get_level (int ) ;
 scalar_t__ pvTimerGetTimerID (void*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void button_tap_rls_cb(void* tmr)
{

    button_cb_t* btn_cb = (button_cb_t*) pvTimerGetTimerID(tmr);



    button_dev_t* btn = btn_cb->pbtn;
    STOP_TIMER(btn->tap_rls_cb.tmr);

    if (btn->active_level == gpio_get_level(btn->io_num)) {

    } else {

        button_cb_t *pcb = btn->cb_head;
        while (pcb != ((void*)0)) {
            if (pcb->tmr != ((void*)0)) {
                STOP_TIMER(pcb->tmr);
            }
            pcb = pcb->next_cb;
        }
        if (btn->press_serial_cb.tmr && btn->press_serial_cb.tmr != ((void*)0)) {
            STOP_TIMER(btn->press_serial_cb.tmr);
        }
        if (btn->tap_short_cb.cb && btn->state == BUTTON_STATE_PUSH) {
            btn->tap_short_cb.cb(btn->tap_short_cb.arg);
        }
        if(btn->tap_rls_cb.cb && btn->state != BUTTON_STATE_IDLE) {
            btn->tap_rls_cb.cb(btn->tap_rls_cb.arg);
        }
        btn->state = BUTTON_STATE_IDLE;
    }
}
