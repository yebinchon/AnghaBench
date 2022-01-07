
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int httpd_resp_send (int *,char*,int) ;
 int httpd_resp_set_type (int *,char*) ;

__attribute__((used)) static esp_err_t root_get_handler(httpd_req_t *req)
{
    httpd_resp_set_type(req, "text/html");
    httpd_resp_send(req, "<h1>Hello Secure World!</h1>", -1);

    return ESP_OK;
}
