
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int teammate ;
typedef int netname ;
struct TYPE_5__ {char* subteam; int cs; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int TEAMNAME ;
 int TeamPlayIsOn () ;
 int strncpy (char*,char*,int) ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_JoinSubteam(bot_state_t *bs, bot_match_t *match) {
 char teammate[MAX_MESSAGE_SIZE];
 char netname[MAX_MESSAGE_SIZE];
 int client;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 trap_BotMatchVariable(match, TEAMNAME, teammate, sizeof(teammate));

 strncpy(bs->subteam, teammate, 32);
 bs->subteam[31] = '\0';

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 BotAI_BotInitialChat(bs, "joinedteam", teammate, ((void*)0));
 client = ClientFromName(netname);
 trap_BotEnterChat(bs->cs, client, CHAT_TELL);
}
