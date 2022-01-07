
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_gatt_if_t ;


 int BAS_IDX_NB ;
 int bas_att_db ;
 int esp_ble_gatts_create_attr_tab (int ,int ,int ,int ) ;

void hidd_le_create_service(esp_gatt_if_t gatts_if)
{


    esp_ble_gatts_create_attr_tab(bas_att_db, gatts_if, BAS_IDX_NB, 0);

}
