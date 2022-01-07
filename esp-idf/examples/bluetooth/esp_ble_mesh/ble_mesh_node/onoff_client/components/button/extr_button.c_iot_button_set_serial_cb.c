
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {char* name; int dispatch_method; int callback; TYPE_3__* arg; } ;
typedef TYPE_2__ esp_timer_create_args_t ;
typedef int esp_err_t ;
typedef scalar_t__ button_handle_t ;
struct TYPE_6__ {int * tmr; TYPE_3__* pbtn; int interval; int cb; void* arg; } ;
struct TYPE_8__ {int serial_thres_sec; TYPE_1__ press_serial_cb; } ;
typedef TYPE_3__ button_dev_t ;
typedef int button_cb ;
typedef int TickType_t ;


 int ESP_OK ;
 int ESP_TIMER_TASK ;
 int button_press_serial_cb ;
 int esp_timer_create (TYPE_2__*,int **) ;
 int pdFALSE ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int xTimerChangePeriod (int *,int,int ) ;
 int * xTimerCreate (char*,int,int ,TYPE_3__*,int ) ;

esp_err_t iot_button_set_serial_cb(button_handle_t btn_handle, uint32_t start_after_sec, TickType_t interval_tick, button_cb cb, void* arg)
{
    button_dev_t* btn = (button_dev_t*) btn_handle;
    btn->serial_thres_sec = start_after_sec;

    if (btn->press_serial_cb.tmr == ((void*)0)) {

        btn->press_serial_cb.tmr = xTimerCreate("btn_serial_tmr", btn->serial_thres_sec*1000 / portTICK_PERIOD_MS,
                            pdFALSE, btn, button_press_serial_cb);
    }
    btn->press_serial_cb.arg = arg;
    btn->press_serial_cb.cb = cb;
    btn->press_serial_cb.interval = interval_tick;
    btn->press_serial_cb.pbtn = btn;

    xTimerChangePeriod(btn->press_serial_cb.tmr, btn->serial_thres_sec*1000 / portTICK_PERIOD_MS, portMAX_DELAY);

    return ESP_OK;
}
