
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_default_bind {int dummy; } ;


 size_t GP2X_BTN_START ;
 scalar_t__ GP2X_DEV_WIZ ;
 scalar_t__ gp2x_dev_id ;
 scalar_t__ in_gp2x_combo_acts ;
 scalar_t__ in_gp2x_combo_keys ;
 int in_gp2x_drv ;
 char** in_gp2x_keys ;
 int in_register_driver (int *,struct in_default_bind const*,int *) ;

void in_gp2x_init(const struct in_default_bind *defbinds)
{
 if (gp2x_dev_id == GP2X_DEV_WIZ)
  in_gp2x_keys[GP2X_BTN_START] = "MENU";

 in_gp2x_combo_keys = in_gp2x_combo_acts = 0;

 in_register_driver(&in_gp2x_drv, defbinds, ((void*)0));
}
