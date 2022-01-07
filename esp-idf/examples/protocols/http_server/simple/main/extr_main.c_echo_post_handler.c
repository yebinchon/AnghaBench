
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int content_len; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;
typedef int buf ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_OK ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int MIN (int,int) ;
 int TAG ;
 int httpd_req_recv (TYPE_1__*,char*,int ) ;
 int httpd_resp_send_chunk (TYPE_1__*,char*,int) ;

__attribute__((used)) static esp_err_t echo_post_handler(httpd_req_t *req)
{
    char buf[100];
    int ret, remaining = req->content_len;

    while (remaining > 0) {

        if ((ret = httpd_req_recv(req, buf,
                        MIN(remaining, sizeof(buf)))) <= 0) {
            if (ret == HTTPD_SOCK_ERR_TIMEOUT) {

                continue;
            }
            return ESP_FAIL;
        }


        httpd_resp_send_chunk(req, buf, ret);
        remaining -= ret;


        ESP_LOGI(TAG, "=========== RECEIVED DATA ==========");
        ESP_LOGI(TAG, "%.*s", ret, buf);
        ESP_LOGI(TAG, "====================================");
    }


    httpd_resp_send_chunk(req, ((void*)0), 0);
    return ESP_OK;
}
