
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_req_handler_t ;
typedef int esp_err_t ;


 int ESP_OK ;

__attribute__((used)) static esp_err_t protocomm_ble_add_endpoint(const char *ep_name,
        protocomm_req_handler_t req_handler,
        void *priv_data)
{

    return ESP_OK;
}
