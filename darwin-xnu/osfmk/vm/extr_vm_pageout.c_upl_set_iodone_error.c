
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
struct upl_io_completion {int io_error; } ;
struct TYPE_3__ {struct upl_io_completion* upl_iodone; } ;



void upl_set_iodone_error(upl_t upl, int error)
{
        struct upl_io_completion *upl_ctx = upl->upl_iodone;

 if (upl_ctx)
         upl_ctx->io_error = error;
}
