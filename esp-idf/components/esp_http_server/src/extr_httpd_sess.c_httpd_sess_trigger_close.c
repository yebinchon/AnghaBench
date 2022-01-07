
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_db {int dummy; } ;
typedef int httpd_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_FOUND ;
 int httpd_queue_work (int ,int ,struct sock_db*) ;
 int httpd_sess_close ;
 struct sock_db* httpd_sess_get (int ,int) ;

esp_err_t httpd_sess_trigger_close(httpd_handle_t handle, int sockfd)
{
    struct sock_db *sock_db = httpd_sess_get(handle, sockfd);
    if (sock_db) {
        return httpd_queue_work(handle, httpd_sess_close, sock_db);
    }

    return ESP_ERR_NOT_FOUND;
}
