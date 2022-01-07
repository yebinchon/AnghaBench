
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int client; int cs; int subteam; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int *,...) ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 int CHAT_TEAM ;
 int TeamPlayIsOn () ;
 scalar_t__ strlen (int ) ;
 int trap_BotEnterChat (int ,int ,int ) ;

void BotMatch_WhichTeam(bot_state_t *bs, bot_match_t *match) {
 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 if (strlen(bs->subteam)) {
  BotAI_BotInitialChat(bs, "inteam", bs->subteam, ((void*)0));
 }
 else {
  BotAI_BotInitialChat(bs, "noteam", ((void*)0));
 }
 trap_BotEnterChat(bs->cs, bs->client, CHAT_TEAM);
}
