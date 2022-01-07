
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; } ;
typedef TYPE_1__ me_bind_action ;


 int IN_BINDTYPE_EMU ;
 int IN_BINDTYPE_PLAYER12 ;
 int IN_CFG_DOES_COMBOS ;
 int IN_MAX_DEVS ;







 int count_bound_keys (int,int,int) ;
 int draw_key_config (TYPE_1__ const*,int,int,int,int,int,int) ;
 int in_bind_key (int,int,int,int,int ) ;
 int in_get_config (int,int ,int*) ;
 int * in_get_dev_name (int,int,int ) ;
 int in_menu_wait (int,int *,int) ;
 int const in_menu_wait_any (int *,int) ;
 int in_unbind_all (int,int,int) ;
 int in_update_keycode (int*,int*,int *,int) ;
 int lprintf (char*) ;

__attribute__((used)) static void key_config_loop(const me_bind_action *opts, int opt_cnt, int player_idx)
{
 int i, sel = 0, menu_sel_max = opt_cnt - 1, does_combos = 0;
 int dev_id, bind_dev_id, dev_count, kc, is_down, mkey;
 int unbind, bindtype, mask_shift;

 for (i = 0, dev_id = -1, dev_count = 0; i < IN_MAX_DEVS; i++) {
  if (in_get_dev_name(i, 1, 0) != ((void*)0)) {
   dev_count++;
   if (dev_id < 0)
    dev_id = i;
  }
 }

 if (dev_id == -1) {
  lprintf("no devs, can't do config\n");
  return;
 }

 dev_id = -1;
 mask_shift = 0;
 if (player_idx == 1)
  mask_shift = 16;
 bindtype = player_idx >= 0 ? IN_BINDTYPE_PLAYER12 : IN_BINDTYPE_EMU;

 for (;;)
 {
  draw_key_config(opts, opt_cnt, player_idx, sel, dev_id, dev_count, 0);
  mkey = in_menu_wait(128|134|133|129
    |131|130|132, ((void*)0), 100);
  switch (mkey) {
   case 128: sel--; if (sel < 0) sel = menu_sel_max; continue;
   case 134: sel++; if (sel > menu_sel_max) sel = 0; continue;
   case 133:
    for (i = 0, dev_id--; i < IN_MAX_DEVS + 1; i++, dev_id--) {
     if (dev_id < -1)
      dev_id = IN_MAX_DEVS - 1;
     if (dev_id == -1 || in_get_dev_name(dev_id, 0, 0) != ((void*)0))
      break;
    }
    continue;
   case 129:
    for (i = 0, dev_id++; i < IN_MAX_DEVS; i++, dev_id++) {
     if (dev_id >= IN_MAX_DEVS)
      dev_id = -1;
     if (dev_id == -1 || in_get_dev_name(dev_id, 0, 0) != ((void*)0))
      break;
    }
    continue;
   case 131:
    return;
   case 130:
    if (sel >= opt_cnt)
     return;
    while (in_menu_wait_any(((void*)0), 30) & 130)
     ;
    break;
   case 132:
    in_unbind_all(dev_id, opts[sel].mask << mask_shift, bindtype);
    continue;
   default:continue;
  }

  draw_key_config(opts, opt_cnt, player_idx, sel, dev_id, dev_count, 1);


  for (is_down = 1; is_down; )
   kc = in_update_keycode(&bind_dev_id, &is_down, ((void*)0), -1);

  i = count_bound_keys(bind_dev_id, opts[sel].mask << mask_shift, bindtype);
  unbind = (i > 0);


  in_get_config(bind_dev_id, IN_CFG_DOES_COMBOS, &does_combos);
  if (i == 1 && bindtype == IN_BINDTYPE_EMU && does_combos)
   unbind = 0;

  if (unbind)
   in_unbind_all(bind_dev_id, opts[sel].mask << mask_shift, bindtype);

  in_bind_key(bind_dev_id, kc, opts[sel].mask << mask_shift, bindtype, 0);
 }
}
