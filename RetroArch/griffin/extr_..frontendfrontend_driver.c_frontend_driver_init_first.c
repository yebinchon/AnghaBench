
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init ) (void*) ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 TYPE_1__* current_frontend_ctx ;
 scalar_t__ frontend_ctx_init_first () ;
 int stub1 (void*) ;

void frontend_driver_init_first(void *args)
{
   current_frontend_ctx = (frontend_ctx_driver_t*)frontend_ctx_init_first();

   if (current_frontend_ctx && current_frontend_ctx->init)
      current_frontend_ctx->init(args);
}
