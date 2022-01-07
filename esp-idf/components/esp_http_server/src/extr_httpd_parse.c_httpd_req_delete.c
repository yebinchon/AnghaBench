
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {scalar_t__ remaining_len; } ;
struct TYPE_4__ {struct httpd_req_aux* aux; } ;
struct httpd_data {TYPE_1__ hd_req; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;
typedef int dummy ;


 int CONFIG_HTTPD_PURGE_BUF_LEN ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOG_BUFFER_HEX_LEVEL (int ,char*,int,int ) ;
 int ESP_LOG_DEBUG ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int MIN (int,scalar_t__) ;
 int TAG ;
 int httpd_req_cleanup (TYPE_1__*) ;
 int httpd_req_recv (TYPE_1__*,char*,int) ;

esp_err_t httpd_req_delete(struct httpd_data *hd)
{
    httpd_req_t *r = &hd->hd_req;
    struct httpd_req_aux *ra = r->aux;


    while (ra->remaining_len) {


        char dummy[CONFIG_HTTPD_PURGE_BUF_LEN];
        int recv_len = MIN(sizeof(dummy), ra->remaining_len);
        recv_len = httpd_req_recv(r, dummy, recv_len);
        if (recv_len < 0) {
            httpd_req_cleanup(r);
            return ESP_FAIL;
        }

        ESP_LOGD(TAG, LOG_FMT("purging data size : %d bytes"), recv_len);
    }

    httpd_req_cleanup(r);
    return ESP_OK;
}
