
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int match ;
struct TYPE_11__ {TYPE_1__* variables; int string; } ;
typedef TYPE_2__ bot_match_t ;
struct TYPE_12__ {int chat; } ;
typedef TYPE_3__ bot_chatstate_t ;
struct TYPE_13__ {int (* Print ) (int ,char*,char*) ;} ;
struct TYPE_10__ {int offset; void* length; } ;


 TYPE_3__* BotChatStateFromHandle (int) ;
 char* BotChooseInitialChatMessage (TYPE_3__*,char*) ;
 int BotConstructChatMessage (TYPE_3__*,char*,int,TYPE_2__*,int ,int ) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int PRT_MESSAGE ;
 TYPE_4__ botimport ;
 int qfalse ;
 int strcat (int ,char*) ;
 void* strlen (char*) ;
 int stub1 (int ,char*,char*) ;

void BotInitialChat(int chatstate, char *type, int mcontext, char *var0, char *var1, char *var2, char *var3, char *var4, char *var5, char *var6, char *var7)
{
 char *message;
 int index;
 bot_match_t match;
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;

 if (!cs->chat) return;

 message = BotChooseInitialChatMessage(cs, type);

 if (!message)
 {



  return;
 }

 Com_Memset(&match, 0, sizeof(match));
 index = 0;
 if( var0 ) {
  strcat(match.string, var0);
  match.variables[0].offset = index;
  match.variables[0].length = strlen(var0);
  index += strlen(var0);
 }
 if( var1 ) {
  strcat(match.string, var1);
  match.variables[1].offset = index;
  match.variables[1].length = strlen(var1);
  index += strlen(var1);
 }
 if( var2 ) {
  strcat(match.string, var2);
  match.variables[2].offset = index;
  match.variables[2].length = strlen(var2);
  index += strlen(var2);
 }
 if( var3 ) {
  strcat(match.string, var3);
  match.variables[3].offset = index;
  match.variables[3].length = strlen(var3);
  index += strlen(var3);
 }
 if( var4 ) {
  strcat(match.string, var4);
  match.variables[4].offset = index;
  match.variables[4].length = strlen(var4);
  index += strlen(var4);
 }
 if( var5 ) {
  strcat(match.string, var5);
  match.variables[5].offset = index;
  match.variables[5].length = strlen(var5);
  index += strlen(var5);
 }
 if( var6 ) {
  strcat(match.string, var6);
  match.variables[6].offset = index;
  match.variables[6].length = strlen(var6);
  index += strlen(var6);
 }
 if( var7 ) {
  strcat(match.string, var7);
  match.variables[7].offset = index;
  match.variables[7].length = strlen(var7);
  index += strlen(var7);
 }

 BotConstructChatMessage(cs, message, mcontext, &match, 0, qfalse);
}
