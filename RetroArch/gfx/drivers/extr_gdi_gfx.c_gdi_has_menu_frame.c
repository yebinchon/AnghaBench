
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gdi_menu_frame ;

bool gdi_has_menu_frame(void)
{
   return (gdi_menu_frame != ((void*)0));
}
