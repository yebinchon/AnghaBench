
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
typedef int esp_err_t ;
struct TYPE_4__ {int fd; scalar_t__ lru_counter; } ;


 int ESP_LOGD (int ,int ,int) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 scalar_t__ UINT64_MAX ;
 int httpd_sess_trigger_close (struct httpd_data*,int) ;

esp_err_t httpd_sess_close_lru(struct httpd_data *hd)
{
    uint64_t lru_counter = UINT64_MAX;
    int lru_fd = -1;
    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {




        if (hd->hd_sd[i].fd == -1) {
            return ESP_OK;
        }
        if (hd->hd_sd[i].lru_counter < lru_counter) {
            lru_counter = hd->hd_sd[i].lru_counter;
            lru_fd = hd->hd_sd[i].fd;
        }
    }
    ESP_LOGD(TAG, LOG_FMT("fd = %d"), lru_fd);
    return httpd_sess_trigger_close(hd, lru_fd);
}
