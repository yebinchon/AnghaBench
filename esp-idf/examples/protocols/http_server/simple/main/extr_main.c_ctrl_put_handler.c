
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int HTTPD_404_NOT_FOUND ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int TAG ;
 int echo ;
 int hello ;
 int * http_404_error_handler ;
 int httpd_register_err_handler (int ,int ,int *) ;
 int httpd_register_uri_handler (int ,int *) ;
 int httpd_req_recv (TYPE_1__*,char*,int) ;
 int httpd_resp_send (TYPE_1__*,int *,int ) ;
 int httpd_resp_send_408 (TYPE_1__*) ;
 int httpd_unregister_uri (int ,char*) ;

__attribute__((used)) static esp_err_t ctrl_put_handler(httpd_req_t *req)
{
    char buf;
    int ret;

    if ((ret = httpd_req_recv(req, &buf, 1)) <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            httpd_resp_send_408(req);
        }
        return ESP_FAIL;
    }

    if (buf == '0') {

        ESP_LOGI(TAG, "Unregistering /hello and /echo URIs");
        httpd_unregister_uri(req->handle, "/hello");
        httpd_unregister_uri(req->handle, "/echo");

        httpd_register_err_handler(req->handle, HTTPD_404_NOT_FOUND, http_404_error_handler);
    }
    else {
        ESP_LOGI(TAG, "Registering /hello and /echo URIs");
        httpd_register_uri_handler(req->handle, &hello);
        httpd_register_uri_handler(req->handle, &echo);

        httpd_register_err_handler(req->handle, HTTPD_404_NOT_FOUND, ((void*)0));
    }


    httpd_resp_send(req, ((void*)0), 0);
    return ESP_OK;
}
