
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
struct TYPE_4__ {int fd; } ;


 int ESP_LOGW (int ,int ,int) ;
 int LOG_FMT (char*) ;
 int TAG ;
 int fd_is_valid (int) ;
 int httpd_sess_delete (struct httpd_data*,int) ;

void httpd_sess_delete_invalid(struct httpd_data *hd)
{
    for (int i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd != -1 && !fd_is_valid(hd->hd_sd[i].fd)) {
            ESP_LOGW(TAG, LOG_FMT("Closing invalid socket %d"), hd->hd_sd[i].fd);
            httpd_sess_delete(hd, hd->hd_sd[i].fd);
        }
    }
}
