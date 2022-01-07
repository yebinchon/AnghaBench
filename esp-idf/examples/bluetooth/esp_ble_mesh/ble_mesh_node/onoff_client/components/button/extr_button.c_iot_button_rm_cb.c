
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
typedef scalar_t__ button_handle_t ;
struct TYPE_4__ {int tmr; TYPE_1__* pbtn; int * arg; int * cb; } ;
struct TYPE_3__ {TYPE_2__ press_serial_cb; TYPE_2__ tap_short_cb; TYPE_2__ tap_rls_cb; TYPE_2__ tap_psh_cb; } ;
typedef TYPE_1__ button_dev_t ;
typedef scalar_t__ button_cb_type_t ;
typedef TYPE_2__ button_cb_t ;


 scalar_t__ BUTTON_CB_PUSH ;
 scalar_t__ BUTTON_CB_RELEASE ;
 scalar_t__ BUTTON_CB_SERIAL ;
 scalar_t__ BUTTON_CB_TAP ;
 int ESP_OK ;
 int button_free_tmr (int *) ;

esp_err_t iot_button_rm_cb(button_handle_t btn_handle, button_cb_type_t type)
{
    button_dev_t* btn = (button_dev_t*) btn_handle;
    button_cb_t* btn_cb = ((void*)0);
    if (type == BUTTON_CB_PUSH) {
        btn_cb = &btn->tap_psh_cb;
    } else if (type == BUTTON_CB_RELEASE) {
        btn_cb = &btn->tap_rls_cb;
    } else if (type == BUTTON_CB_TAP) {
        btn_cb = &btn->tap_short_cb;
    } else if (type == BUTTON_CB_SERIAL) {
        btn_cb = &btn->press_serial_cb;
    }
    btn_cb->cb = ((void*)0);
    btn_cb->arg = ((void*)0);
    btn_cb->pbtn = btn;
    button_free_tmr(&btn_cb->tmr);
    return ESP_OK;
}
