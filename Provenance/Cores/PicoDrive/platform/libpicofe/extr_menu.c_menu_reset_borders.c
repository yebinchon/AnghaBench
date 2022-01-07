
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ border_bottom ;
 int border_left ;
 scalar_t__ border_right ;
 int border_top ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;

__attribute__((used)) static void menu_reset_borders(void)
{
 border_left = g_menuscreen_w;
 border_right = 0;
 border_top = g_menuscreen_h;
 border_bottom = 0;
}
