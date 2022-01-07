
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP2X_BTN_PUSH ;
 int IN_BINDTYPE_COUNT ;
 size_t IN_BINDTYPE_EMU ;
 int IN_BINDTYPE_PLAYER12 ;
 size_t IN_BIND_OFFS (int,int) ;
 int in_combos_do (int,int const*,int ,int,int ) ;
 int in_gp2x_combo_acts ;
 int in_gp2x_combo_keys ;
 int in_gp2x_get_bits () ;

__attribute__((used)) static int in_gp2x_update(void *drv_data, const int *binds, int *result)
{
 int type_start = 0;
 int i, t, keys;

 keys = in_gp2x_get_bits();

 if (keys & in_gp2x_combo_keys) {
  result[IN_BINDTYPE_EMU] = in_combos_do(keys, binds, GP2X_BTN_PUSH,
      in_gp2x_combo_keys, in_gp2x_combo_acts);
  type_start = IN_BINDTYPE_PLAYER12;
 }

 for (i = 0; keys; i++, keys >>= 1) {
  if (!(keys & 1))
   continue;

  for (t = type_start; t < IN_BINDTYPE_COUNT; t++)
   result[t] |= binds[IN_BIND_OFFS(i, t)];
 }

 return 0;
}
