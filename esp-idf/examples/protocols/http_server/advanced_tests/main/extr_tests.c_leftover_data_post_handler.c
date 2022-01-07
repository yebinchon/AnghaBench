
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef int esp_err_t ;
typedef int buf ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,char*) ;
 int ESP_OK ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int TAG ;
 int httpd_req_recv (int *,char*,int) ;
 int httpd_resp_send (int *,char*,int ) ;
 int httpd_resp_send_408 (int *) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t leftover_data_post_handler(httpd_req_t *req)
{



    char buf[11];
    int ret;


    ret = httpd_req_recv(req, buf, sizeof(buf) - 1);
    if (ret <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            httpd_resp_send_408(req);
        }
        return ESP_FAIL;
    }

    buf[ret] = '\0';
    ESP_LOGI(TAG, "leftover data handler read %s", buf);
    httpd_resp_send(req, buf, strlen(buf));
    return ESP_OK;
}
