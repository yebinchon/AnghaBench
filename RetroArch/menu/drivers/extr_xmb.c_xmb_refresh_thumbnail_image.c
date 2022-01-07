
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_quick_menu; int thumbnail_path_data; scalar_t__ is_playlist; scalar_t__ categories_selection_ptr; } ;
typedef TYPE_1__ xmb_handle_t ;


 int MENU_LIST_PLAIN ;
 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 unsigned int XMB_SYSTEM_TAB_SETTINGS ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 unsigned int xmb_get_system_tab (TYPE_1__*,unsigned int) ;
 scalar_t__ xmb_list_get_size (TYPE_1__*,int ) ;
 int xmb_update_thumbnail_image (TYPE_1__*) ;
 int xmb_update_thumbnail_path (TYPE_1__*,int ,char) ;

__attribute__((used)) static void xmb_refresh_thumbnail_image(void *data, unsigned i)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (!xmb)
      return;


   if ( menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
         menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
   {
      unsigned depth = (unsigned)xmb_list_get_size(xmb, MENU_LIST_PLAIN);
      unsigned xmb_system_tab = xmb_get_system_tab(xmb, (unsigned)xmb->categories_selection_ptr);
      if (((xmb_system_tab > XMB_SYSTEM_TAB_SETTINGS && depth == 1) ||
           (xmb_system_tab < XMB_SYSTEM_TAB_SETTINGS && depth == 4)) &&
          xmb->is_playlist)
      {
         if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
            xmb_update_thumbnail_path(xmb, 0 , 'R');

         if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
            xmb_update_thumbnail_path(xmb, 0 , 'L');

         xmb_update_thumbnail_image(xmb);
      }
      else if (xmb->is_quick_menu)
      {




         xmb_update_thumbnail_image(xmb);
      }
   }
}
