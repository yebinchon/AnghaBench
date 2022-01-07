
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ borders_pending ;
 int menu_darken_text_bg () ;
 int menu_reset_borders () ;

__attribute__((used)) static void menu_separation(void)
{
 if (borders_pending) {
  menu_darken_text_bg();
  menu_reset_borders();
 }
}
