
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int value; int offset; int len; int handle; int auth_req; } ;
struct TYPE_9__ {TYPE_1__ attr_value; } ;
typedef TYPE_3__ tBTA_GATTS_RSP ;
struct TYPE_8__ {int value; int offset; int len; int handle; int auth_req; } ;
struct TYPE_10__ {TYPE_2__ attr_value; } ;
typedef TYPE_4__ esp_gatt_rsp_t ;


 int ESP_GATT_MAX_ATTR_LEN ;
 int memcpy (int ,int ,int ) ;

void btc_to_bta_response(tBTA_GATTS_RSP *p_dest, esp_gatt_rsp_t *p_src)
{
    p_dest->attr_value.auth_req = p_src->attr_value.auth_req;
    p_dest->attr_value.handle = p_src->attr_value.handle;
    p_dest->attr_value.len = p_src->attr_value.len;
    p_dest->attr_value.offset = p_src->attr_value.offset;
    memcpy(p_dest->attr_value.value, p_src->attr_value.value, ESP_GATT_MAX_ATTR_LEN);
}
