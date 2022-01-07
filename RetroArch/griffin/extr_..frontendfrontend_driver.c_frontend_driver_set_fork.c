
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_fork ) (int) ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;
typedef enum frontend_fork { ____Placeholder_frontend_fork } frontend_fork ;


 int frontend_driver_has_fork () ;
 TYPE_1__* frontend_get_ptr () ;
 int stub1 (int) ;

bool frontend_driver_set_fork(enum frontend_fork fork_mode)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();

   if (!frontend_driver_has_fork())
      return 0;
   return frontend->set_fork(fork_mode);
}
