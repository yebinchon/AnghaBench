
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sixel_menu_frame ;

bool sixel_has_menu_frame(void)
{
   return (sixel_menu_frame != ((void*)0));
}
