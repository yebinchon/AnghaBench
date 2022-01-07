
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct async_resp_arg {scalar_t__ fd; int hd; } ;
struct TYPE_5__ {int handle; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,scalar_t__) ;
 int ESP_OK ;
 int STR ;
 int TAG ;
 int generate_async_resp ;
 int httpd_queue_work (int ,int ,struct async_resp_arg*) ;
 scalar_t__ httpd_req_to_sockfd (TYPE_1__*) ;
 int httpd_resp_send (TYPE_1__*,int ,int ) ;
 struct async_resp_arg* malloc (int) ;
 int strlen (int ) ;

__attribute__((used)) static esp_err_t async_get_handler(httpd_req_t *req)
{

    httpd_resp_send(req, "Hello World!", strlen("Hello World!"));



    struct async_resp_arg *resp_arg = malloc(sizeof(struct async_resp_arg));
    resp_arg->hd = req->handle;
    resp_arg->fd = httpd_req_to_sockfd(req);
    if (resp_arg->fd < 0) {
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Queuing work fd : %d", resp_arg->fd);
    httpd_queue_work(req->handle, generate_async_resp, resp_arg);
    return ESP_OK;

}
