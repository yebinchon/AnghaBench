
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,int) ;} ;


 int BotFreeCharacterStrings (int *) ;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 int PRT_FATAL ;
 int ** botcharacters ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void BotFreeCharacter2(int handle)
{
 if (handle <= 0 || handle > MAX_CLIENTS)
 {
  botimport.Print(PRT_FATAL, "character handle %d out of range\n", handle);
  return;
 }
 if (!botcharacters[handle])
 {
  botimport.Print(PRT_FATAL, "invalid character %d\n", handle);
  return;
 }
 BotFreeCharacterStrings(botcharacters[handle]);
 FreeMemory(botcharacters[handle]);
 botcharacters[handle] = ((void*)0);
}
