
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netname ;
struct TYPE_5__ {int decisionmaker; int cs; scalar_t__ lastgoal_ltgtype; scalar_t__ lead_time; scalar_t__ ltgtype; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int *) ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int TeamPlayIsOn () ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_Dismiss(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_MESSAGE_SIZE];
 int client;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;
 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = ClientFromName(netname);

 bs->decisionmaker = client;

 bs->ltgtype = 0;
 bs->lead_time = 0;
 bs->lastgoal_ltgtype = 0;

 BotAI_BotInitialChat(bs, "dismissed", ((void*)0));
 trap_BotEnterChat(bs->cs, client, CHAT_TELL);
}
