
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_ACTION_START ;
 int menu_setting_set (unsigned int,int ,int) ;

__attribute__((used)) static int action_start_lookup_setting(unsigned type, const char *label)
{
   return menu_setting_set(type, MENU_ACTION_START, 0);
}
