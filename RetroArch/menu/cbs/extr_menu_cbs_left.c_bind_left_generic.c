
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_ACTION_LEFT ;
 int menu_setting_set (unsigned int,int ,int) ;

__attribute__((used)) static int bind_left_generic(unsigned type, const char *label,
      bool wraparound)
{
   return menu_setting_set(type, MENU_ACTION_LEFT, wraparound);
}
