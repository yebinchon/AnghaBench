
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set_fork; } ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 TYPE_1__* frontend_get_ptr () ;

bool frontend_driver_has_fork(void)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();

   if (!frontend || !frontend->set_fork)
      return 0;
   return 1;
}
