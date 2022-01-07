
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uri; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int httpd_err_code_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int HTTPD_404_NOT_FOUND ;
 int httpd_resp_send_err (TYPE_1__*,int ,char*) ;
 scalar_t__ strcmp (char*,int ) ;

esp_err_t http_404_error_handler(httpd_req_t *req, httpd_err_code_t err)
{
    if (strcmp("/hello", req->uri) == 0) {
        httpd_resp_send_err(req, HTTPD_404_NOT_FOUND, "/hello URI is not available");

        return ESP_OK;
    } else if (strcmp("/echo", req->uri) == 0) {
        httpd_resp_send_err(req, HTTPD_404_NOT_FOUND, "/echo URI is not available");

        return ESP_FAIL;
    }

    httpd_resp_send_err(req, HTTPD_404_NOT_FOUND, "Some 404 error message");
    return ESP_FAIL;
}
