
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct upl_io_completion {void (* io_done ) (void*,int) ;void* io_context; int io_error; } ;
struct TYPE_3__ {struct upl_io_completion* upl_iodone; } ;


 int assert (void (*) (void*,int)) ;
 void stub1 (void*,int) ;

void upl_callout_iodone(upl_t upl)
{
        struct upl_io_completion *upl_ctx = upl->upl_iodone;

 if (upl_ctx) {
         void (*iodone_func)(void *, int) = upl_ctx->io_done;

  assert(upl_ctx->io_done);

  (*iodone_func)(upl_ctx->io_context, upl_ctx->io_error);
 }
}
