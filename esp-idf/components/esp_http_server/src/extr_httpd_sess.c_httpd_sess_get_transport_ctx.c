
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_db {void* transport_ctx; } ;
typedef int httpd_handle_t ;


 struct sock_db* httpd_sess_get (int ,int) ;

void *httpd_sess_get_transport_ctx(httpd_handle_t handle, int sockfd)
{
    struct sock_db *sd = httpd_sess_get(handle, sockfd);
    if (sd == ((void*)0)) {
        return ((void*)0);
    }

    return sd->transport_ctx;
}
