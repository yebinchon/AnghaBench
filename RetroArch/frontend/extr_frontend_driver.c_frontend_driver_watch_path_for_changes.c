
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int dummy; } ;
typedef int path_change_data_t ;
struct TYPE_3__ {int (* watch_path_for_changes ) (struct string_list*,int,int **) ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 TYPE_1__* frontend_get_ptr () ;
 int stub1 (struct string_list*,int,int **) ;

void frontend_driver_watch_path_for_changes(struct string_list *list, int flags, path_change_data_t **change_data)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend || !frontend->watch_path_for_changes)
      return;
   frontend->watch_path_for_changes(list, flags, change_data);
}
