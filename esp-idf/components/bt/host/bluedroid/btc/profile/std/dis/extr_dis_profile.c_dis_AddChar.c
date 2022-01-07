
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int uuid; } ;
typedef TYPE_2__ tDIS_DB_ENTRY ;
typedef int UINT16 ;
struct TYPE_9__ {int enabled; int service_handle; TYPE_2__* dis_attr; } ;
struct TYPE_6__ {int uuid16; } ;
struct TYPE_8__ {TYPE_1__ uu; } ;


 size_t DIS_MAX_CHAR_NUM ;
 int GATT_CHAR_PROP_BIT_READ ;
 int GATT_PERM_READ ;
 int TRUE ;
 int * dis_attr_uuid ;
 TYPE_5__ dis_cb ;
 int dis_mask ;
 int esp_ble_gatts_add_char (int ,TYPE_3__*,int ,int ) ;
 int esp_ble_gatts_start_srvc (int ) ;
 size_t i ;
 TYPE_3__ uuid ;

void dis_AddChar(UINT16 service_id)
{


    tDIS_DB_ENTRY *p_db_attr = &dis_cb.dis_attr[0];
    while (dis_mask != 0 && i < DIS_MAX_CHAR_NUM) {
        uuid.uu.uuid16 = p_db_attr->uuid = dis_attr_uuid[i];
        esp_ble_gatts_add_char(dis_cb.service_handle, &uuid, GATT_PERM_READ,
                               GATT_CHAR_PROP_BIT_READ);
        p_db_attr ++;
        i ++;
        dis_mask >>= 1;
    }

    esp_ble_gatts_start_srvc(dis_cb.service_handle);
    dis_cb.enabled = TRUE;
}
