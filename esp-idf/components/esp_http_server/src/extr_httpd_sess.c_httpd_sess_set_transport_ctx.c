
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_db {void* transport_ctx; int free_transport_ctx; } ;
typedef int httpd_handle_t ;
typedef int httpd_free_ctx_fn_t ;


 int httpd_sess_free_ctx (void*,int ) ;
 struct sock_db* httpd_sess_get (int ,int) ;

void httpd_sess_set_transport_ctx(httpd_handle_t handle, int sockfd, void *ctx, httpd_free_ctx_fn_t free_fn)
{
    struct sock_db *sd = httpd_sess_get(handle, sockfd);
    if (sd == ((void*)0)) {
        return;
    }

    if (sd->transport_ctx != ctx) {

        httpd_sess_free_ctx(sd->transport_ctx, sd->free_transport_ctx);
        sd->transport_ctx = ctx;
    }
    sd->free_transport_ctx = free_fn;
}
