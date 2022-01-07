
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int binds ;


 int IN_BINDTYPE_EMU ;
 size_t IN_BIND_OFFS (int,int ) ;

void in_combos_find(const int *binds, int last_key, int *combo_keys, int *combo_acts)
{
 int act, u;

 *combo_keys = *combo_acts = 0;
 for (act = 0; act < sizeof(binds[0]) * 8; act++)
 {
  int keyc = 0;
  for (u = 0; u <= last_key; u++)
   if (binds[IN_BIND_OFFS(u, IN_BINDTYPE_EMU)] & (1 << act))
    keyc++;

  if (keyc > 1)
  {

   for (u = 0; u <= last_key; u++)
   {
    if (binds[IN_BIND_OFFS(u, IN_BINDTYPE_EMU)] & (1 << act)) {
     *combo_keys |= 1 << u;
     *combo_acts |= 1 << act;
    }
   }
  }
 }
}
