
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; scalar_t__ (* open_fn ) (struct httpd_data*,int) ;} ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
typedef scalar_t__ httpd_handle_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {int fd; int recv_fn; int send_fn; scalar_t__ handle; } ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,int ,int) ;
 int ESP_LOGE (int ,int ,int) ;
 scalar_t__ ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int httpd_default_recv ;
 int httpd_default_send ;
 int httpd_sess_delete (struct httpd_data*,int) ;
 scalar_t__ httpd_sess_get (struct httpd_data*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (struct httpd_data*,int) ;

esp_err_t httpd_sess_new(struct httpd_data *hd, int newfd)
{
    ESP_LOGD(TAG, LOG_FMT("fd = %d"), newfd);

    if (httpd_sess_get(hd, newfd)) {
        ESP_LOGE(TAG, LOG_FMT("session already exists with fd = %d"), newfd);
        return ESP_FAIL;
    }

    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd == -1) {
            memset(&hd->hd_sd[i], 0, sizeof(hd->hd_sd[i]));
            hd->hd_sd[i].fd = newfd;
            hd->hd_sd[i].handle = (httpd_handle_t) hd;
            hd->hd_sd[i].send_fn = httpd_default_send;
            hd->hd_sd[i].recv_fn = httpd_default_recv;


            if (hd->config.open_fn) {
                esp_err_t ret = hd->config.open_fn(hd, hd->hd_sd[i].fd);
                if (ret != ESP_OK) {
                    httpd_sess_delete(hd, hd->hd_sd[i].fd);
                    ESP_LOGD(TAG, LOG_FMT("open_fn failed for fd = %d"), newfd);
                    return ret;
                }
            }
            return ESP_OK;
        }
    }
    ESP_LOGD(TAG, LOG_FMT("unable to launch session for fd = %d"), newfd);
    return ESP_FAIL;
}
