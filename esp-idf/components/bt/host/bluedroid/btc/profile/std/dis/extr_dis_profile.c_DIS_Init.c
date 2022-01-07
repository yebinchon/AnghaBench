
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tGATT_STATUS ;
typedef int tDIS_CB ;
typedef int tDIS_ATTR_MASK ;
typedef int esp_gatts_if_t ;
struct TYPE_3__ {scalar_t__ enabled; } ;


 int DIS_MAX_ATTR_NUM ;
 int GATT_TRACE_ERROR (char*) ;
 int TRUE ;
 TYPE_1__ dis_cb ;
 int dis_mask ;
 int esp_ble_gatts_create_srvc (int ,int *,int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int uuid ;

void DIS_Init (esp_gatts_if_t gatt_if, tDIS_ATTR_MASK dis_attr_mask)
{

    tGATT_STATUS status;
    dis_mask = dis_attr_mask;
    if (dis_cb.enabled) {
        GATT_TRACE_ERROR("DIS already initalized");
        return;
    }

    memset(&dis_cb, 0, sizeof(tDIS_CB));

    esp_ble_gatts_create_srvc (gatt_if , &uuid, 0, DIS_MAX_ATTR_NUM, TRUE);

}
