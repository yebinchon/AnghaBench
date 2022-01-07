
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * environment_get; } ;
typedef TYPE_1__ frontend_ctx_driver_t ;
typedef int * environment_get_t ;


 TYPE_1__* frontend_get_ptr () ;

environment_get_t frontend_driver_environment_get_ptr(void)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend)
      return ((void*)0);
   return frontend->environment_get;
}
