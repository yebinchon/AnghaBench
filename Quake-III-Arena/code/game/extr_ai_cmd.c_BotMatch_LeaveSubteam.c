
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netname ;
struct TYPE_5__ {int subteam; int cs; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,int *) ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int TeamPlayIsOn () ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (int ) ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_LeaveSubteam(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_MESSAGE_SIZE];
 int client;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 if (strlen(bs->subteam))
 {
  BotAI_BotInitialChat(bs, "leftteam", bs->subteam, ((void*)0));
  trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
  client = ClientFromName(netname);
  trap_BotEnterChat(bs->cs, client, CHAT_TELL);
 }
 strcpy(bs->subteam, "");
}
