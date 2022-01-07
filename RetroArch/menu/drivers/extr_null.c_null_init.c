
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void menu_handle_t ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void* null_init(void **userdata, bool video_is_threaded)
{
   menu_handle_t *menu = (menu_handle_t*)calloc(1, sizeof(*menu));

   if (!menu)
      return ((void*)0);

   return menu;
}
