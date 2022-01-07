
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * horizontal_list; } ;
typedef TYPE_1__ ozone_handle_t ;
typedef int file_list_t ;


 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 scalar_t__ calloc (int,int) ;
 int file_list_free (int *) ;
 int menu_driver_ctl (int ,int *) ;
 int ozone_context_destroy_horizontal_list (TYPE_1__*) ;
 int ozone_context_reset_horizontal_list (TYPE_1__*) ;
 int ozone_free_list_nodes (int *,int) ;
 int ozone_init_horizontal_list (TYPE_1__*) ;

void ozone_refresh_horizontal_list(ozone_handle_t *ozone)
{
   ozone_context_destroy_horizontal_list(ozone);
   if (ozone->horizontal_list)
   {
      ozone_free_list_nodes(ozone->horizontal_list, 0);
      file_list_free(ozone->horizontal_list);
   }
   ozone->horizontal_list = ((void*)0);

   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));

   ozone->horizontal_list = (file_list_t*)
      calloc(1, sizeof(file_list_t));

   if (ozone->horizontal_list)
      ozone_init_horizontal_list(ozone);

   ozone_context_reset_horizontal_list(ozone);
}
