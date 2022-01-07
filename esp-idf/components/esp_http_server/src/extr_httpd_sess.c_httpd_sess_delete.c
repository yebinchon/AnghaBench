
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_open_sockets; int (* close_fn ) (struct httpd_data*,int) ;} ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
struct TYPE_4__ {int fd; int (* free_transport_ctx ) (int *) ;int * transport_ctx; int (* free_ctx ) (int *) ;int * ctx; } ;


 int ESP_LOGD (int ,int ,int) ;
 int LOG_FMT (char*) ;
 int TAG ;
 int free (int *) ;
 int stub1 (struct httpd_data*,int) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

int httpd_sess_delete(struct httpd_data *hd, int fd)
{
    ESP_LOGD(TAG, LOG_FMT("fd = %d"), fd);
    int i;
    int pre_sess_fd = -1;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd == fd) {

            if (hd->config.close_fn) {
                hd->config.close_fn(hd, fd);
            }


            if (hd->hd_sd[i].ctx) {
                if (hd->hd_sd[i].free_ctx) {
                    hd->hd_sd[i].free_ctx(hd->hd_sd[i].ctx);
                } else {
                    free(hd->hd_sd[i].ctx);
                }
                hd->hd_sd[i].ctx = ((void*)0);
                hd->hd_sd[i].free_ctx = ((void*)0);
            }


            if (hd->hd_sd[i].transport_ctx) {
                if (hd->hd_sd[i].free_transport_ctx) {
                    hd->hd_sd[i].free_transport_ctx(hd->hd_sd[i].transport_ctx);
                } else {
                    free(hd->hd_sd[i].transport_ctx);
                }
                hd->hd_sd[i].transport_ctx = ((void*)0);
                hd->hd_sd[i].free_transport_ctx = ((void*)0);
            }


            hd->hd_sd[i].fd = -1;
            break;
        } else if (hd->hd_sd[i].fd != -1) {



            pre_sess_fd = hd->hd_sd[i].fd;
        }
    }
    return pre_sess_fd;
}
