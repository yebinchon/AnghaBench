
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int smartconfig_type_t ;
struct TYPE_6__ {int ip; int token; } ;
struct TYPE_7__ {TYPE_1__ ctx; int type; } ;
typedef TYPE_2__ sc_ack_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int SC_ACK_TASK_PRIORITY ;
 int SC_ACK_TASK_STACK_SIZE ;
 int TAG ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ pdPASS ;
 int s_sc_ack_send ;
 int sc_ack_send_task ;
 scalar_t__ xTaskCreate (int ,char*,int ,TYPE_2__*,int ,int *) ;

esp_err_t sc_send_ack_start(smartconfig_type_t type, uint8_t token, uint8_t *cellphone_ip)
{
    sc_ack_t *ack = ((void*)0);

    if (cellphone_ip == ((void*)0)) {
        ESP_LOGE(TAG, "Cellphone IP address is NULL");
        return ESP_ERR_INVALID_ARG;
    }

    ack = malloc(sizeof(sc_ack_t));
    if (ack == ((void*)0)) {
        ESP_LOGE(TAG, "ACK parameter malloc fail");
        return ESP_ERR_NO_MEM;
    }
    ack->type = type;
    ack->ctx.token = token;
    memcpy(ack->ctx.ip, cellphone_ip, 4);

    s_sc_ack_send = 1;

    if (xTaskCreate(sc_ack_send_task, "sc_ack_send_task", SC_ACK_TASK_STACK_SIZE, ack, SC_ACK_TASK_PRIORITY, ((void*)0)) != pdPASS) {
        ESP_LOGE(TAG, "Create sending smartconfig ACK task fail");
        free(ack);
        return ESP_ERR_NO_MEM;
    }

    return ESP_OK;
}
