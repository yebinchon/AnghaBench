
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int esp_err_t ;
typedef scalar_t__ button_handle_t ;
struct TYPE_11__ {int tmr; } ;
struct TYPE_10__ {int tmr; } ;
struct TYPE_9__ {int tmr; } ;
struct TYPE_8__ {int tmr; } ;
struct TYPE_12__ {int tmr; struct TYPE_12__* next_cb; struct TYPE_12__* cb_head; TYPE_4__ press_serial_cb; TYPE_3__ tap_short_cb; TYPE_2__ tap_psh_cb; TYPE_1__ tap_rls_cb; int io_num; } ;
typedef TYPE_5__ button_dev_t ;
typedef TYPE_5__ button_cb_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GPIO_INTR_DISABLE ;
 int POINT_ASSERT (int ,scalar_t__,int ) ;
 int TAG ;
 int button_free_tmr (int *) ;
 int free (TYPE_5__*) ;
 int gpio_isr_handler_remove (int ) ;
 int gpio_set_intr_type (int ,int ) ;

esp_err_t iot_button_delete(button_handle_t btn_handle)
{
    POINT_ASSERT(TAG, btn_handle, ESP_ERR_INVALID_ARG);
    button_dev_t* btn = (button_dev_t*) btn_handle;
    gpio_set_intr_type(btn->io_num, GPIO_INTR_DISABLE);
    gpio_isr_handler_remove(btn->io_num);

    button_free_tmr(&btn->tap_rls_cb.tmr);
    button_free_tmr(&btn->tap_psh_cb.tmr);
    button_free_tmr(&btn->tap_short_cb.tmr);
    button_free_tmr(&btn->press_serial_cb.tmr);

    button_cb_t *pcb = btn->cb_head;
    while (pcb != ((void*)0)) {
        button_cb_t *cb_next = pcb->next_cb;
        button_free_tmr(&pcb->tmr);
        free(pcb);
        pcb = cb_next;
    }
    free(btn);
    return ESP_OK;
}
