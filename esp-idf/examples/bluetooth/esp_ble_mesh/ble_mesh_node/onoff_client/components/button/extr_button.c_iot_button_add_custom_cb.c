
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {char* name; int dispatch_method; int callback; TYPE_2__* arg; } ;
typedef TYPE_1__ esp_timer_create_args_t ;
typedef int esp_err_t ;
typedef TYPE_2__* button_handle_t ;
struct TYPE_11__ {TYPE_2__* cb_head; } ;
typedef TYPE_3__ button_dev_t ;
struct TYPE_10__ {int interval; struct TYPE_10__* next_cb; int tmr; TYPE_3__* pbtn; int cb; void* arg; } ;
typedef TYPE_2__ button_cb_t ;
typedef int button_cb ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ESP_TIMER_TASK ;
 int IOT_CHECK (int ,int,int ) ;
 int POINT_ASSERT (int ,TYPE_2__*,int ) ;
 int TAG ;
 int button_press_cb ;
 scalar_t__ calloc (int,int) ;
 int esp_timer_create (TYPE_1__*,int *) ;
 int pdFALSE ;
 int portTICK_PERIOD_MS ;
 int xTimerCreate (char*,int,int ,TYPE_2__*,int ) ;

esp_err_t iot_button_add_custom_cb(button_handle_t btn_handle, uint32_t press_sec, button_cb cb, void* arg)
{
    POINT_ASSERT(TAG, btn_handle, ESP_ERR_INVALID_ARG);
    IOT_CHECK(TAG, press_sec != 0, ESP_ERR_INVALID_ARG);
    button_dev_t* btn = (button_dev_t*) btn_handle;
    button_cb_t* cb_new = (button_cb_t*) calloc(1, sizeof(button_cb_t));
    POINT_ASSERT(TAG, cb_new, ESP_FAIL);
    cb_new->arg = arg;
    cb_new->cb = cb;
    cb_new->interval = press_sec * 1000 / portTICK_PERIOD_MS;
    cb_new->pbtn = btn;

    cb_new->tmr = xTimerCreate("btn_press_tmr", cb_new->interval, pdFALSE, cb_new, button_press_cb);
    cb_new->next_cb = btn->cb_head;
    btn->cb_head = cb_new;
    return ESP_OK;
}
