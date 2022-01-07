
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ active_level; int state; int io_num; } ;
typedef TYPE_1__ button_dev_t ;
struct TYPE_4__ {int arg; int (* cb ) (int ) ;TYPE_1__* pbtn; } ;
typedef TYPE_2__ button_cb_t ;


 int BUTTON_STATE_PRESSED ;
 scalar_t__ gpio_get_level (int ) ;
 scalar_t__ pvTimerGetTimerID (void*) ;
 int stub1 (int ) ;

__attribute__((used)) static void button_press_cb(void* tmr)
{

    button_cb_t* btn_cb = (button_cb_t*) pvTimerGetTimerID(tmr);




    button_dev_t* btn = btn_cb->pbtn;

    if (btn->active_level == gpio_get_level(btn->io_num)) {
        btn->state = BUTTON_STATE_PRESSED;
        if (btn_cb->cb) {
            btn_cb->cb(btn_cb->arg);
        }
    }
}
