
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int path_change_data_t ;
struct TYPE_3__ {int (* check_for_path_changes ) (int *) ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 TYPE_1__* frontend_get_ptr () ;
 int stub1 (int *) ;

bool frontend_driver_check_for_path_changes(path_change_data_t *change_data)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend || !frontend->check_for_path_changes)
      return 0;
   return frontend->check_for_path_changes(change_data);
}
