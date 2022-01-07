
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int materialui_handle_t ;


 int materialui_switch_list_view (int *) ;

__attribute__((used)) static void materialui_update_thumbnail_image(void *userdata)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;
   if (!mui)
      return;

   materialui_switch_list_view(mui);
}
