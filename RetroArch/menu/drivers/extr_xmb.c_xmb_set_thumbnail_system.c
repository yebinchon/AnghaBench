
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_path_data; } ;
typedef TYPE_1__ xmb_handle_t ;


 int menu_thumbnail_set_system (int ,char*,int ) ;
 int playlist_get_cached () ;

__attribute__((used)) static void xmb_set_thumbnail_system(void *data, char*s, size_t len)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   menu_thumbnail_set_system(
         xmb->thumbnail_path_data, s, playlist_get_cached());
}
