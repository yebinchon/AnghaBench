
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interval; int tmr; int arg; int (* cb ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ press_serial_cb; } ;
typedef TYPE_2__ button_dev_t ;


 int esp_timer_start_once (int ,int) ;
 int esp_timer_stop (int ) ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 scalar_t__ pvTimerGetTimerID (void*) ;
 int stub1 (int ) ;
 int xTimerChangePeriod (int ,int,int ) ;
 int xTimerReset (int ,int ) ;

__attribute__((used)) static void button_press_serial_cb(void* tmr)
{

    button_dev_t* btn = (button_dev_t*) pvTimerGetTimerID(tmr);




    if (btn->press_serial_cb.cb) {
        btn->press_serial_cb.cb(btn->press_serial_cb.arg);
    }

    xTimerChangePeriod(btn->press_serial_cb.tmr, btn->press_serial_cb.interval, portMAX_DELAY);
    xTimerReset(btn->press_serial_cb.tmr, portMAX_DELAY);




}
