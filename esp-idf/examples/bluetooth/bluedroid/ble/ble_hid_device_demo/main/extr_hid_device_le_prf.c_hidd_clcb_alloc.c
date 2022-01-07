
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int in_use; int connected; int remote_bda; int conn_id; } ;
typedef TYPE_1__ hidd_clcb_t ;
typedef int esp_bd_addr_t ;
struct TYPE_4__ {TYPE_1__* hidd_clcb; } ;


 int ESP_BD_ADDR_LEN ;
 scalar_t__ HID_MAX_APPS ;
 TYPE_2__ hidd_le_env ;
 int memcpy (int ,int ,int ) ;

void hidd_clcb_alloc (uint16_t conn_id, esp_bd_addr_t bda)
{
    uint8_t i_clcb = 0;
    hidd_clcb_t *p_clcb = ((void*)0);

    for (i_clcb = 0, p_clcb= hidd_le_env.hidd_clcb; i_clcb < HID_MAX_APPS; i_clcb++, p_clcb++) {
        if (!p_clcb->in_use) {
            p_clcb->in_use = 1;
            p_clcb->conn_id = conn_id;
            p_clcb->connected = 1;
            memcpy (p_clcb->remote_bda, bda, ESP_BD_ADDR_LEN);
            break;
        }
    }
    return;
}
