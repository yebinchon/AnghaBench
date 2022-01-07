
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int httpd_resp_send (int *,int *,int ) ;
 int httpd_resp_set_hdr (int *,char*,char*) ;
 int httpd_resp_set_status (int *,char*) ;

__attribute__((used)) static esp_err_t index_html_get_handler(httpd_req_t *req)
{
    httpd_resp_set_status(req, "307 Temporary Redirect");
    httpd_resp_set_hdr(req, "Location", "/");
    httpd_resp_send(req, ((void*)0), 0);
    return ESP_OK;
}
