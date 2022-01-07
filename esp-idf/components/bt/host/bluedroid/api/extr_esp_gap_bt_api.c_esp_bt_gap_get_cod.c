
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int esp_bt_cod_t ;


 int btc_gap_bt_get_cod (int *) ;

esp_err_t esp_bt_gap_get_cod(esp_bt_cod_t *cod)
{
    return btc_gap_bt_get_cod(cod);
}
