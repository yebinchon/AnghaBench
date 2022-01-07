
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_db {int send_fn; } ;
typedef int httpd_send_func_t ;
typedef int httpd_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 struct sock_db* httpd_sess_get (int ,int) ;

esp_err_t httpd_sess_set_send_override(httpd_handle_t hd, int sockfd, httpd_send_func_t send_func)
{
    struct sock_db *sess = httpd_sess_get(hd, sockfd);
    if (!sess) {
        return ESP_ERR_INVALID_ARG;
    }
    sess->send_fn = send_func;
    return ESP_OK;
}
