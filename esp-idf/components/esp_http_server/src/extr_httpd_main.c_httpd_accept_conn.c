
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tv ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int lru_purge_enable; int send_wait_timeout; int recv_wait_timeout; } ;
struct httpd_data {TYPE_1__ config; } ;
typedef int socklen_t ;
typedef scalar_t__ esp_err_t ;
typedef int addr_from ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,int ,...) ;
 int ESP_LOGW (int ,int ,...) ;
 scalar_t__ ESP_OK ;
 int LOG_FMT (char*) ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int TAG ;
 int accept (int,struct sockaddr*,int*) ;
 int close (int) ;
 int errno ;
 int httpd_is_sess_available (struct httpd_data*) ;
 scalar_t__ httpd_sess_close_lru (struct httpd_data*) ;
 scalar_t__ httpd_sess_new (struct httpd_data*,int) ;
 int setsockopt (int,int ,int ,char const*,int) ;

__attribute__((used)) static esp_err_t httpd_accept_conn(struct httpd_data *hd, int listen_fd)
{

    if (hd->config.lru_purge_enable == 1) {
        if (!httpd_is_sess_available(hd)) {

            return httpd_sess_close_lru(hd);






       }
    }

    struct sockaddr_in addr_from;
    socklen_t addr_from_len = sizeof(addr_from);
    int new_fd = accept(listen_fd, (struct sockaddr *)&addr_from, &addr_from_len);
    if (new_fd < 0) {
        ESP_LOGW(TAG, LOG_FMT("error in accept (%d)"), errno);
        return ESP_FAIL;
    }
    ESP_LOGD(TAG, LOG_FMT("newfd = %d"), new_fd);

    struct timeval tv;

    tv.tv_sec = hd->config.recv_wait_timeout;
    tv.tv_usec = 0;
    setsockopt(new_fd, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof(tv));


    tv.tv_sec = hd->config.send_wait_timeout;
    tv.tv_usec = 0;
    setsockopt(new_fd, SOL_SOCKET, SO_SNDTIMEO, (const char*)&tv, sizeof(tv));

    if (ESP_OK != httpd_sess_new(hd, new_fd)) {
        ESP_LOGW(TAG, LOG_FMT("session creation failed"));
        close(new_fd);
        return ESP_FAIL;
    }
    ESP_LOGD(TAG, LOG_FMT("complete"));
    return ESP_OK;
}
