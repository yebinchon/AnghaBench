
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int ESP_OK ;
 int STR ;
 int TAG ;
 int httpd_resp_send (int *,int ,int ) ;
 int strlen (int ) ;
 int uxTaskGetStackHighWaterMark (int *) ;

__attribute__((used)) static esp_err_t hello_get_handler(httpd_req_t *req)
{

    ESP_LOGI(TAG, "Free Stack for server task: '%d'", uxTaskGetStackHighWaterMark(((void*)0)));
    httpd_resp_send(req, "Hello World!", strlen("Hello World!"));
    return ESP_OK;

}
