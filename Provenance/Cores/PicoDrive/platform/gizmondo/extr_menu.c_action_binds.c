
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* KeyBinds; } ;


 TYPE_1__ currentConfig ;
 char** keyNames ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *action_binds(int player_idx, int action_mask)
{
 static char strkeys[32*5];
 int i;

 strkeys[0] = 0;
 for (i = 0; i < 32; i++)
 {
  if (currentConfig.KeyBinds[i] & action_mask)
  {
   if (player_idx >= 0 && ((currentConfig.KeyBinds[i] >> 16) & 3) != player_idx) continue;
   if (strkeys[0]) { strcat(strkeys, " + "); strcat(strkeys, keyNames[i]); break; }
   else strcpy(strkeys, keyNames[i]);
  }
 }

 return strkeys;
}
