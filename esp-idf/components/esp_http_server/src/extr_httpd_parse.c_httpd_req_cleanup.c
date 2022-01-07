
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_5__ {int ignore_sess_ctx_changes; scalar_t__ sess_ctx; struct httpd_req_aux* aux; int * handle; int free_ctx; } ;
typedef TYPE_2__ httpd_req_t ;
struct TYPE_4__ {scalar_t__ ctx; int ignore_sess_ctx_changes; int free_ctx; } ;


 int httpd_sess_free_ctx (scalar_t__,int ) ;

__attribute__((used)) static void httpd_req_cleanup(httpd_req_t *r)
{
    struct httpd_req_aux *ra = r->aux;


    if ((r->ignore_sess_ctx_changes == 0) && (ra->sd->ctx != r->sess_ctx)) {
        httpd_sess_free_ctx(ra->sd->ctx, ra->sd->free_ctx);
    }

    ra->sd->ctx = r->sess_ctx;
    ra->sd->free_ctx = r->free_ctx;
    ra->sd->ignore_sess_ctx_changes = r->ignore_sess_ctx_changes;


    ra->sd = ((void*)0);
    r->handle = ((void*)0);
    r->aux = ((void*)0);
}
