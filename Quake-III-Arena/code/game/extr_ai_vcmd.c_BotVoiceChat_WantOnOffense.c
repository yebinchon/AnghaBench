
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int netname ;
struct TYPE_7__ {int client; int cs; } ;
typedef TYPE_1__ bot_state_t ;


 int ACTION_AFFIRMATIVE ;
 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotGetTeamMateTaskPreference (TYPE_1__*,int) ;
 int BotSetTeamMateTaskPreference (TYPE_1__*,int,int) ;
 int BotVoiceChatOnly (TYPE_1__*,int,int ) ;
 int CHAT_TELL ;
 int EasyClientName (int,char*,int) ;
 int MAX_NETNAME ;
 int TEAMTP_ATTACKER ;
 int TEAMTP_DEFENDER ;
 int VOICECHAT_YES ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_EA_Action (int ,int ) ;

void BotVoiceChat_WantOnOffense(bot_state_t *bs, int client, int mode) {
 char netname[MAX_NETNAME];
 int preference;

 preference = BotGetTeamMateTaskPreference(bs, client);
 preference &= ~TEAMTP_DEFENDER;
 preference |= TEAMTP_ATTACKER;
 BotSetTeamMateTaskPreference(bs, client, preference);

 EasyClientName(client, netname, sizeof(netname));
 BotAI_BotInitialChat(bs, "keepinmind", netname, ((void*)0));
 trap_BotEnterChat(bs->cs, client, CHAT_TELL);
 BotVoiceChatOnly(bs, client, VOICECHAT_YES);
 trap_EA_Action(bs->client, ACTION_AFFIRMATIVE);
}
