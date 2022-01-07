
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_architecture ) () ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;
typedef enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;


 int FRONTEND_ARCH_NONE ;
 TYPE_1__* frontend_get_ptr () ;
 int stub1 () ;

enum frontend_architecture frontend_driver_get_cpu_architecture(void)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend || !frontend->get_architecture)
      return FRONTEND_ARCH_NONE;
   return frontend->get_architecture();
}
