
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_WRITE_REQ ;
typedef int esp_gatt_status_t ;
typedef int UINT8 ;


 int ESP_GATT_OK ;
 int GATT_WRITE_NOT_PERMIT ;
 int UNUSED (int *) ;

UINT8 dis_write_attr_value(tGATT_WRITE_REQ *p_data, esp_gatt_status_t *p_status)
{
    UNUSED(p_data);

    *p_status = GATT_WRITE_NOT_PERMIT;
    return ESP_GATT_OK;
}
