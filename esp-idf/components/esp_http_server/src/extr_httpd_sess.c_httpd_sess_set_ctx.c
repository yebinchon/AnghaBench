
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_db {void* ctx; void* free_ctx; } ;
struct TYPE_4__ {void* sess_ctx; void* free_ctx; } ;
struct TYPE_3__ {struct sock_db* sd; } ;
struct httpd_data {TYPE_2__ hd_req; TYPE_1__ hd_req_aux; } ;
typedef scalar_t__ httpd_handle_t ;
typedef void* httpd_free_ctx_fn_t ;


 int httpd_sess_free_ctx (void*,void*) ;
 struct sock_db* httpd_sess_get (scalar_t__,int) ;

void httpd_sess_set_ctx(httpd_handle_t handle, int sockfd, void *ctx, httpd_free_ctx_fn_t free_fn)
{
    struct sock_db *sd = httpd_sess_get(handle, sockfd);
    if (sd == ((void*)0)) {
        return;
    }




    struct httpd_data *hd = (struct httpd_data *) handle;
    if (hd->hd_req_aux.sd == sd) {
        if (hd->hd_req.sess_ctx != ctx) {


            if (sd->ctx != hd->hd_req.sess_ctx) {

                httpd_sess_free_ctx(hd->hd_req.sess_ctx, hd->hd_req.free_ctx);
            }
            hd->hd_req.sess_ctx = ctx;
        }
        hd->hd_req.free_ctx = free_fn;
        return;
    }


    if (sd->ctx != ctx) {

        httpd_sess_free_ctx(sd->ctx, sd->free_ctx);
        sd->ctx = ctx;
    }
    sd->free_ctx = free_fn;
}
