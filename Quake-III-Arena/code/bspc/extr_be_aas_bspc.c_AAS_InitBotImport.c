
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int BSPModelMinsMaxsOrigin; int Print; int PointContents; int Trace; int FreeMemory; int GetMemory; int BSPEntityData; } ;


 int BotImport_BSPEntityData ;
 int BotImport_BSPModelMinsMaxsOrigin ;
 int BotImport_GetMemory ;
 int BotImport_PointContents ;
 int BotImport_Print ;
 int BotImport_Trace ;
 int FreeMemory ;
 TYPE_1__ botimport ;

void AAS_InitBotImport(void)
{
 botimport.BSPEntityData = BotImport_BSPEntityData;
 botimport.GetMemory = BotImport_GetMemory;
 botimport.FreeMemory = FreeMemory;
 botimport.Trace = BotImport_Trace;
 botimport.PointContents = BotImport_PointContents;
 botimport.Print = BotImport_Print;
 botimport.BSPModelMinsMaxsOrigin = BotImport_BSPModelMinsMaxsOrigin;
}
