
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
typedef int * httpd_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int fd; int lru_counter; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int httpd_sess_get_lru_counter () ;

esp_err_t httpd_sess_update_lru_counter(httpd_handle_t handle, int sockfd)
{
    if (handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }


    struct httpd_data *hd = (struct httpd_data *) handle;
    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd == sockfd) {
            hd->hd_sd[i].lru_counter = httpd_sess_get_lru_counter();
            return ESP_OK;
        }
    }
    return ESP_ERR_NOT_FOUND;
}
