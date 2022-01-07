
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int btc_init () ;
 int osi_alarm_create_mux () ;
 int osi_alarm_init () ;

esp_err_t bt_mesh_host_init(void)
{
    int rc;
    rc = btc_init();
    if (rc != 0) {
        return ESP_FAIL;
    }

    rc = osi_alarm_create_mux();
    if (rc != 0) {
        return ESP_FAIL;
    }

    osi_alarm_init();
    return ESP_OK;
}
