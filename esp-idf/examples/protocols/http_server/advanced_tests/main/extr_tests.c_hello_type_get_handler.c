
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int HTTPD_TYPE_TEXT ;
 int STR ;
 int httpd_resp_send (int *,int ,int ) ;
 int httpd_resp_set_type (int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static esp_err_t hello_type_get_handler(httpd_req_t *req)
{

    httpd_resp_set_type(req, HTTPD_TYPE_TEXT);
    httpd_resp_send(req, "Hello World!", strlen("Hello World!"));
    return ESP_OK;

}
