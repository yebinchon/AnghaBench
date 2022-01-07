
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP2X_BTN_PUSH ;
 size_t GP2X_BTN_SELECT ;
 size_t GP2X_BTN_VOL_DOWN ;
 size_t GP2X_BTN_VOL_UP ;
 int IN_BINDTYPE_COUNT ;
 int IN_BINDTYPE_EMU ;
 size_t IN_BIND_OFFS (size_t,int) ;
 int IN_GP2X_NBUTTONS ;
 int PEV_MENU ;
 int PEV_VOL_DOWN ;
 int PEV_VOL_UP ;
 int eb ;
 int have_menu ;
 int have_vol ;
 int in_combos_find (int*,int ,int *,int *) ;
 int in_gp2x_combo_acts ;
 int in_gp2x_combo_keys ;
 int ** in_gp2x_keys ;

__attribute__((used)) static int in_gp2x_clean_binds(void *drv_data, int *binds, int *def_binds)
{
 int i, count = 0;


 for (i = 0; i < IN_GP2X_NBUTTONS; i++) {
  int t, offs;
  for (t = 0; t < IN_BINDTYPE_COUNT; t++) {
   offs = IN_BIND_OFFS(i, t);
   if (in_gp2x_keys[i] == ((void*)0))
    binds[offs] = def_binds[offs] = 0;
   if (binds[offs])
    count++;
  }







 }
 in_combos_find(binds, GP2X_BTN_PUSH, &in_gp2x_combo_keys, &in_gp2x_combo_acts);

 return count;
}
