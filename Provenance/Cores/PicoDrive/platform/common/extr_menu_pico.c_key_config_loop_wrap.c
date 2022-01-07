
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (int ) ;
 int emuctrl_actions ;
 int key_config_loop (int ,int ,int) ;
 int me_ctrl_actions ;

__attribute__((used)) static int key_config_loop_wrap(int id, int keys)
{
 switch (id) {
  case 129:
   key_config_loop(me_ctrl_actions, array_size(me_ctrl_actions) - 1, 0);
   break;
  case 128:
   key_config_loop(me_ctrl_actions, array_size(me_ctrl_actions) - 1, 1);
   break;
  case 130:
   key_config_loop(emuctrl_actions, array_size(emuctrl_actions) - 1, -1);
   break;
  default:
   break;
 }
 return 0;
}
