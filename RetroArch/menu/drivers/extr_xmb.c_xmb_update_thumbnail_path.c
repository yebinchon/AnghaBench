
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_path_data; } ;
typedef TYPE_1__ xmb_handle_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int menu_thumbnail_get_core_name (int ,char const**) ;
 int menu_thumbnail_is_enabled (int ,int ) ;
 int menu_thumbnail_update_path (int ,int ) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static void xmb_update_thumbnail_path(void *data, unsigned i, char pos)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   const char *core_name = ((void*)0);

   if (!xmb)
      return;


   menu_thumbnail_get_core_name(xmb->thumbnail_path_data, &core_name);
   if (string_is_equal(core_name, "imageviewer"))
   {
      if ((pos == 'R') || (pos == 'L' && !menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT)))
         menu_thumbnail_update_path(xmb->thumbnail_path_data, pos == 'R' ? MENU_THUMBNAIL_RIGHT : MENU_THUMBNAIL_LEFT);
   }
   else
      menu_thumbnail_update_path(xmb->thumbnail_path_data, pos == 'R' ? MENU_THUMBNAIL_RIGHT : MENU_THUMBNAIL_LEFT);
}
