
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * global_transport_ctx; int (* global_transport_ctx_free_fn ) (int *) ;int * global_user_ctx; int (* global_user_ctx_free_fn ) (int *) ;int ctrl_port; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct httpd_data {TYPE_2__ config; TYPE_1__ hd_td; int msg_fd; } ;
struct httpd_ctrl_data {int hc_msg; } ;
typedef int msg ;
typedef scalar_t__ httpd_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,int ) ;
 int ESP_OK ;
 int HTTPD_CTRL_SHUTDOWN ;
 int LOG_FMT (char*) ;
 int TAG ;
 scalar_t__ THREAD_STOPPED ;
 int cs_send_to_ctrl_sock (int ,int ,struct httpd_ctrl_data*,int) ;
 int free (int *) ;
 int httpd_delete (struct httpd_data*) ;
 int httpd_os_thread_sleep (int) ;
 int memset (struct httpd_ctrl_data*,int ,int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

esp_err_t httpd_stop(httpd_handle_t handle)
{
    struct httpd_data *hd = (struct httpd_data *) handle;
    if (hd == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    struct httpd_ctrl_data msg;
    memset(&msg, 0, sizeof(msg));
    msg.hc_msg = HTTPD_CTRL_SHUTDOWN;
    cs_send_to_ctrl_sock(hd->msg_fd, hd->config.ctrl_port, &msg, sizeof(msg));

    ESP_LOGD(TAG, LOG_FMT("sent control msg to stop server"));
    while (hd->hd_td.status != THREAD_STOPPED) {
        httpd_os_thread_sleep(100);
    }


    if (hd->config.global_user_ctx) {
        if (hd->config.global_user_ctx_free_fn) {
            hd->config.global_user_ctx_free_fn(hd->config.global_user_ctx);
        } else {
            free(hd->config.global_user_ctx);
        }
        hd->config.global_user_ctx = ((void*)0);
    }


    if (hd->config.global_transport_ctx) {
        if (hd->config.global_transport_ctx_free_fn) {
            hd->config.global_transport_ctx_free_fn(hd->config.global_transport_ctx);
        } else {
            free(hd->config.global_transport_ctx);
        }
        hd->config.global_transport_ctx = ((void*)0);
    }

    ESP_LOGD(TAG, LOG_FMT("server stopped"));
    httpd_delete(hd);
    return ESP_OK;
}
