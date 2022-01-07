
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,int) ;} ;


 int BotFreeWeaponWeights (int) ;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 int PRT_FATAL ;
 TYPE_1__ botimport ;
 int ** botweaponstates ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void BotFreeWeaponState(int handle)
{
 if (handle <= 0 || handle > MAX_CLIENTS)
 {
  botimport.Print(PRT_FATAL, "move state handle %d out of range\n", handle);
  return;
 }
 if (!botweaponstates[handle])
 {
  botimport.Print(PRT_FATAL, "invalid move state %d\n", handle);
  return;
 }
 BotFreeWeaponWeights(handle);
 FreeMemory(botweaponstates[handle]);
 botweaponstates[handle] = ((void*)0);
}
