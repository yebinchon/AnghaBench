
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glClearColor (float,float,float,float) ;

__attribute__((used)) static void menu_display_gl1_restore_clear_color(void)
{
   glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
}
