
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_port; } ;
struct httpd_data {TYPE_1__ config; int msg_fd; } ;
struct httpd_ctrl_data {void* hc_work_arg; int * hc_work; int hc_msg; } ;
typedef int msg ;
typedef int * httpd_work_fn_t ;
typedef int * httpd_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGW (int ,int ) ;
 int ESP_OK ;
 int HTTPD_CTRL_WORK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int cs_send_to_ctrl_sock (int ,int ,struct httpd_ctrl_data*,int) ;

esp_err_t httpd_queue_work(httpd_handle_t handle, httpd_work_fn_t work, void *arg)
{
    if (handle == ((void*)0) || work == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    struct httpd_data *hd = (struct httpd_data *) handle;
    struct httpd_ctrl_data msg = {
        .hc_msg = HTTPD_CTRL_WORK,
        .hc_work = work,
        .hc_work_arg = arg,
    };

    int ret = cs_send_to_ctrl_sock(hd->msg_fd, hd->config.ctrl_port, &msg, sizeof(msg));
    if (ret < 0) {
        ESP_LOGW(TAG, LOG_FMT("failed to queue work"));
        return ESP_FAIL;
    }

    return ESP_OK;
}
