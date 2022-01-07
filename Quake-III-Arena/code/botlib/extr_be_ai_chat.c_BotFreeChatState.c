
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bot_consolemessage_t ;
typedef int bot_chatstate_t ;
struct TYPE_2__ {int (* Print ) (int ,char*,int) ;} ;


 int BotFreeChatFile (int) ;
 int BotNextConsoleMessage (int,int *) ;
 int BotRemoveConsoleMessage (int,int) ;
 int FreeMemory (int *) ;
 scalar_t__ LibVarGetValue (char*) ;
 int MAX_CLIENTS ;
 int PRT_FATAL ;
 int ** botchatstates ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void BotFreeChatState(int handle)
{
 bot_chatstate_t *cs;
 bot_consolemessage_t m;
 int h;

 if (handle <= 0 || handle > MAX_CLIENTS)
 {
  botimport.Print(PRT_FATAL, "chat state handle %d out of range\n", handle);
  return;
 }
 if (!botchatstates[handle])
 {
  botimport.Print(PRT_FATAL, "invalid chat state %d\n", handle);
  return;
 }
 cs = botchatstates[handle];
 if (LibVarGetValue("bot_reloadcharacters"))
 {
  BotFreeChatFile(handle);
 }

 for (h = BotNextConsoleMessage(handle, &m); h; h = BotNextConsoleMessage(handle, &m))
 {

  BotRemoveConsoleMessage(handle, h);
 }
 FreeMemory(botchatstates[handle]);
 botchatstates[handle] = ((void*)0);
}
