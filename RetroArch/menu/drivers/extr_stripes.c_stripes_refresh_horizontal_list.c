
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * horizontal_list; } ;
typedef TYPE_1__ stripes_handle_t ;
typedef int file_list_t ;


 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 scalar_t__ calloc (int,int) ;
 int file_list_free (int *) ;
 int menu_driver_ctl (int ,int *) ;
 int stripes_context_destroy_horizontal_list (TYPE_1__*) ;
 int stripes_context_reset_horizontal_list (TYPE_1__*) ;
 int stripes_free_list_nodes (int *,int) ;
 int stripes_init_horizontal_list (TYPE_1__*) ;

__attribute__((used)) static void stripes_refresh_horizontal_list(stripes_handle_t *stripes)
{
   stripes_context_destroy_horizontal_list(stripes);
   if (stripes->horizontal_list)
   {
      stripes_free_list_nodes(stripes->horizontal_list, 0);
      file_list_free(stripes->horizontal_list);
   }
   stripes->horizontal_list = ((void*)0);

   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));

   stripes->horizontal_list = (file_list_t*)
      calloc(1, sizeof(file_list_t));

   if (stripes->horizontal_list)
      stripes_init_horizontal_list(stripes);

   stripes_context_reset_horizontal_list(stripes);
}
