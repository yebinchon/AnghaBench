
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {float alpha; float label_alpha; float zoom; int x; void* y; } ;
typedef TYPE_2__ xmb_node_t ;
struct TYPE_12__ {int use_ps3_layout; int margins_screen_left; int margins_screen_top; int margins_title_left; int margins_title_top; int margins_title_bottom; int margins_label_left; int margins_label_top; int margins_setting_left; int icon_spacing_horizontal; int icon_spacing_vertical; int icon_size; float items_passive_alpha; float items_passive_zoom; float items_active_alpha; int depth; int * selection_buf_old; scalar_t__ selection_ptr_old; } ;
typedef TYPE_3__ xmb_handle_t ;
struct TYPE_10__ {int menu_xmb_layout; } ;
struct TYPE_13__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
typedef int file_list_t ;


 int RARCH_LOG (char*,int) ;
 TYPE_4__* config_get_ptr () ;
 scalar_t__ file_list_get_size (int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 scalar_t__ menu_entries_get_size () ;
 size_t menu_navigation_get_selection () ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 void* xmb_item_y (TYPE_3__*,unsigned int,unsigned int) ;
 int xmb_layout_ps3 (TYPE_3__*,unsigned int) ;
 int xmb_layout_psp (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void xmb_layout(xmb_handle_t *xmb)
{
   unsigned width, height, i, current, end;
   settings_t *settings = config_get_ptr();
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();

   video_driver_get_size(&width, &height);

   switch (settings->uints.menu_xmb_layout)
   {

      case 0:
         {
            xmb->use_ps3_layout = 0;
            xmb->use_ps3_layout = width > 320 && height > 240;


            if (xmb->use_ps3_layout)
               xmb_layout_ps3(xmb, width);
            else
               xmb_layout_psp(xmb, width);
         }
         break;

      case 1:
         xmb->use_ps3_layout = 1;
         xmb_layout_ps3(xmb, width);
         break;

      case 2:
         xmb->use_ps3_layout = 0;
         xmb_layout_psp(xmb, width);
         break;
   }
   current = (unsigned)selection;
   end = (unsigned)menu_entries_get_size();

   for (i = 0; i < end; i++)
   {
      float ia = xmb->items_passive_alpha;
      float iz = xmb->items_passive_zoom;
      xmb_node_t *node = (xmb_node_t*)file_list_get_userdata_at_offset(
            selection_buf, i);

      if (!node)
         continue;

      if (i == current)
      {
         ia = xmb->items_active_alpha;
         iz = xmb->items_active_alpha;
      }

      node->alpha = ia;
      node->label_alpha = ia;
      node->zoom = iz;
      node->y = xmb_item_y(xmb, i, current);
   }

   if (xmb->depth <= 1)
      return;

   current = (unsigned)xmb->selection_ptr_old;
   end = (unsigned)file_list_get_size(xmb->selection_buf_old);

   for (i = 0; i < end; i++)
   {
      float ia = 0;
      float iz = xmb->items_passive_zoom;
      xmb_node_t *node = (xmb_node_t*)file_list_get_userdata_at_offset(
            xmb->selection_buf_old, i);

      if (!node)
         continue;

      if (i == current)
      {
         ia = xmb->items_active_alpha;
         iz = xmb->items_active_alpha;
      }

      node->alpha = ia;
      node->label_alpha = 0;
      node->zoom = iz;
      node->y = xmb_item_y(xmb, i, current);
      node->x = xmb->icon_size * 1 * -2;
   }
}
