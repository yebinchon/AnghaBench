
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct httpd_data {TYPE_1__ hd_td; int ctrl_fd; } ;
struct httpd_ctrl_data {int hc_msg; int hc_work_arg; int (* hc_work ) (int ) ;} ;
typedef int msg ;


 int ESP_LOGD (int ,int ) ;
 int ESP_LOGW (int ,int ,...) ;


 int LOG_FMT (char*) ;
 int TAG ;
 int THREAD_STOPPING ;
 int errno ;
 int recv (int ,struct httpd_ctrl_data*,int,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void httpd_process_ctrl_msg(struct httpd_data *hd)
{
    struct httpd_ctrl_data msg;
    int ret = recv(hd->ctrl_fd, &msg, sizeof(msg), 0);
    if (ret <= 0) {
        ESP_LOGW(TAG, LOG_FMT("error in recv (%d)"), errno);
        return;
    }
    if (ret != sizeof(msg)) {
        ESP_LOGW(TAG, LOG_FMT("incomplete msg"));
        return;
    }

    switch (msg.hc_msg) {
    case 128:
        if (msg.hc_work) {
            ESP_LOGD(TAG, LOG_FMT("work"));
            (*msg.hc_work)(msg.hc_work_arg);
        }
        break;
    case 129:
        ESP_LOGD(TAG, LOG_FMT("shutdown"));
        hd->hd_td.status = THREAD_STOPPING;
        break;
    default:
        break;
    }
}
