
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcheevos_cheats_are_enabled ;
 int rcheevos_cheats_were_enabled ;

bool rcheevos_apply_cheats(bool* data_bool)
{
   rcheevos_cheats_are_enabled = *data_bool;
   rcheevos_cheats_were_enabled |= rcheevos_cheats_are_enabled;

   return 1;
}
