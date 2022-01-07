
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float entry_height; } ;
typedef TYPE_1__ materialui_node_t ;
struct TYPE_5__ {unsigned int nav_bar_layout_height; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef int file_list_t ;


 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 unsigned int menu_display_get_header_height () ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static float materialui_get_scroll(materialui_handle_t *mui)
{
   file_list_t *list = menu_entries_get_selection_buf_ptr(0);
   materialui_node_t *node = ((void*)0);
   size_t selection = menu_navigation_get_selection();
   unsigned header_height = menu_display_get_header_height();
   unsigned width = 0;
   unsigned height = 0;
   float view_centre = 0.0f;
   float selection_centre = 0.0f;
   size_t i;

   if (!mui || !list)
      return 0;


   video_driver_get_size(&width, &height);




   view_centre =
         (float)(height - header_height - mui->nav_bar_layout_height) / 2.0f;





   for (i = 0; i < selection; i++)
   {
      node = (materialui_node_t*)file_list_get_userdata_at_offset(list, i);



      if (!node)
         continue;

      selection_centre += node->entry_height;
   }


   node = (materialui_node_t*)file_list_get_userdata_at_offset(list, selection);
   if (node)
      selection_centre += node->entry_height / 2.0f;





   if (selection_centre < view_centre)
      return 0.0f;




   return selection_centre - view_centre;
}
