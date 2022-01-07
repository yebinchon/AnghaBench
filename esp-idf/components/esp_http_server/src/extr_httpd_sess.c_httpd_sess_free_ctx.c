
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* httpd_free_ctx_fn_t ) (void*) ;


 int free (void*) ;

void httpd_sess_free_ctx(void *ctx, httpd_free_ctx_fn_t free_fn)
{
    if (ctx) {
        if (free_fn) {
            free_fn(ctx);
        } else {
            free(ctx);
        }
    }
}
