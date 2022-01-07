
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_bt_eir_type_t ;


 int * BTM_CheckEirData (int *,int ,int *) ;

uint8_t *esp_bt_gap_resolve_eir_data(uint8_t *eir, esp_bt_eir_type_t type, uint8_t *length)
{
    if (!eir) {
        return ((void*)0);
    }

    return BTM_CheckEirData(eir, type, length);
}
