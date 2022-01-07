
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_CTRL_DEADZONE ;
 int MA_OPT2_A_SN_GAMMA ;
 int MA_OPT2_GAMMA ;
 int MA_OPT_ARM940_SOUND ;
 int MA_OPT_TEARING_FIX ;
 int e_menu_adv_options ;
 int e_menu_gfx_options ;
 int e_menu_keyconfig ;
 int gp2x_dev_id ;
 int me_enable (int ,int ,int) ;
 int ** men_scaling_opts ;

void gp2x_menu_init(void)
{

 me_enable(e_menu_adv_options, MA_OPT_ARM940_SOUND, 0);
 me_enable(e_menu_gfx_options, MA_OPT_TEARING_FIX, 0);
 me_enable(e_menu_gfx_options, MA_OPT2_GAMMA, 0);
 me_enable(e_menu_gfx_options, MA_OPT2_A_SN_GAMMA, 0);

 switch (gp2x_dev_id) {
 case 129:
  me_enable(e_menu_adv_options, MA_OPT_ARM940_SOUND, 1);
  me_enable(e_menu_gfx_options, MA_OPT2_GAMMA, 1);
  me_enable(e_menu_gfx_options, MA_OPT2_A_SN_GAMMA, 1);
  break;
 case 128:
  me_enable(e_menu_gfx_options, MA_OPT_TEARING_FIX, 1);
  break;
 case 130:
  break;
 default:
  break;
 }

 if (gp2x_dev_id != 129)
  men_scaling_opts[2] = ((void*)0);

 if (gp2x_dev_id != 130)
  me_enable(e_menu_keyconfig, MA_CTRL_DEADZONE, 0);
}
