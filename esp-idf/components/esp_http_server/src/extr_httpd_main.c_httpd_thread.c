
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct httpd_data {TYPE_1__ hd_td; int listen_fd; int ctrl_fd; int msg_fd; } ;


 int ESP_LOGD (int ,int ) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int THREAD_RUNNING ;
 int THREAD_STOPPED ;
 int close (int ) ;
 int cs_free_ctrl_sock (int ) ;
 int httpd_close_all_sessions (struct httpd_data*) ;
 int httpd_os_thread_delete () ;
 int httpd_server (struct httpd_data*) ;

__attribute__((used)) static void httpd_thread(void *arg)
{
    int ret;
    struct httpd_data *hd = (struct httpd_data *) arg;
    hd->hd_td.status = THREAD_RUNNING;

    ESP_LOGD(TAG, LOG_FMT("web server started"));
    while (1) {
        ret = httpd_server(hd);
        if (ret != ESP_OK) {
            break;
        }
    }

    ESP_LOGD(TAG, LOG_FMT("web server exiting"));
    close(hd->msg_fd);
    cs_free_ctrl_sock(hd->ctrl_fd);
    httpd_close_all_sessions(hd);
    close(hd->listen_fd);
    hd->hd_td.status = THREAD_STOPPED;
    httpd_os_thread_delete();
}
