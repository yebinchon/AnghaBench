
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*) ;} ;


 int BLERR_CANNOTLOADITEMCONFIG ;
 int BLERR_NOERROR ;
 int LibVar (char*,char*) ;
 char* LibVarString (char*,char*) ;
 int LibVarValue (char*,char*) ;
 int LoadItemConfig (char*) ;
 int PRT_FATAL ;
 TYPE_1__ botimport ;
 int droppedweight ;
 int g_gametype ;
 int itemconfig ;
 int stub1 (int ,char*) ;

int BotSetupGoalAI(void)
{
 char *filename;


 g_gametype = LibVarValue("g_gametype", "0");

 filename = LibVarString("itemconfig", "items.c");

 itemconfig = LoadItemConfig(filename);
 if (!itemconfig)
 {
  botimport.Print(PRT_FATAL, "couldn't load item config\n");
  return BLERR_CANNOTLOADITEMCONFIG;
 }

 droppedweight = LibVar("droppedweight", "1000");

 return BLERR_NOERROR;
}
