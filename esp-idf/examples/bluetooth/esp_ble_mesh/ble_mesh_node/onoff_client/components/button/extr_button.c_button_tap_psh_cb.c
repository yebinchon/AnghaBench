
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int interval; scalar_t__ tmr; } ;
struct TYPE_7__ {int arg; int (* cb ) (int ) ;} ;
struct TYPE_6__ {scalar_t__ tmr; } ;
struct TYPE_9__ {int active_level; int serial_thres_sec; TYPE_3__ tap_rls_cb; TYPE_2__ tap_psh_cb; TYPE_1__ press_serial_cb; int state; int io_num; } ;
typedef TYPE_4__ button_dev_t ;
struct TYPE_10__ {TYPE_4__* pbtn; } ;
typedef TYPE_5__ button_cb_t ;


 int BUTTON_STATE_PUSH ;
 int STOP_TIMER (scalar_t__) ;
 int esp_timer_start_once (scalar_t__,int) ;
 int esp_timer_stop (scalar_t__) ;
 int gpio_get_level (int ) ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 scalar_t__ pvTimerGetTimerID (void*) ;
 int stub1 (int ) ;
 int xTimerChangePeriod (scalar_t__,int,int ) ;
 int xTimerReset (scalar_t__,int ) ;

__attribute__((used)) static void button_tap_psh_cb(void* tmr)
{

    button_cb_t* btn_cb = (button_cb_t*) pvTimerGetTimerID(tmr);




    button_dev_t* btn = btn_cb->pbtn;
    STOP_TIMER(btn->tap_rls_cb.tmr);

    int lv = gpio_get_level(btn->io_num);

    if (btn->active_level == lv) {

        btn->state = BUTTON_STATE_PUSH;
        if (btn->press_serial_cb.tmr) {

            xTimerChangePeriod(btn->press_serial_cb.tmr, btn->serial_thres_sec*1000 / portTICK_PERIOD_MS, portMAX_DELAY);
            xTimerReset(btn->press_serial_cb.tmr, portMAX_DELAY);





        }
        if (btn->tap_psh_cb.cb) {
            btn->tap_psh_cb.cb(btn->tap_psh_cb.arg);
        }
    } else {

        if (btn->tap_rls_cb.tmr) {
            STOP_TIMER(btn->tap_rls_cb.tmr);

            xTimerReset(btn->tap_rls_cb.tmr, portMAX_DELAY);



        }
    }
}
