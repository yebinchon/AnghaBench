
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_path_data; } ;
typedef TYPE_1__ xmb_handle_t ;


 scalar_t__ menu_thumbnail_get_system (int ,char const**) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void xmb_get_thumbnail_system(void *data, char*s, size_t len)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   const char *system = ((void*)0);
   if (!xmb)
      return;

   if (menu_thumbnail_get_system(xmb->thumbnail_path_data, &system))
      strlcpy(s, system, len);
}
