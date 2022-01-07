
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int MENU_INPUT_BINDS_CTL_BIND_ALL ;
 int menu_input_key_bind_set_mode (int ,int *) ;

__attribute__((used)) static int setting_action_ok_bind_all(rarch_setting_t *setting, bool wraparound)
{
   (void)wraparound;
   if (!menu_input_key_bind_set_mode(MENU_INPUT_BINDS_CTL_BIND_ALL, setting))
      return -1;
   return 0;
}
