
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* KeyBinds; } ;


 TYPE_1__ currentConfig ;

__attribute__((used)) static int count_bound_keys(int action, int pl_idx)
{
 int i, keys = 0;

 for (i = 0; i < 32; i++)
 {
  if (pl_idx >= 0 && (currentConfig.KeyBinds[i]&0x30000) != (pl_idx<<16)) continue;
  if (currentConfig.KeyBinds[i] & action) keys++;
 }

 return keys;
}
