
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int teammatename ;
typedef int netname ;
struct TYPE_10__ {int client; int cs; int teamleader; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_11__ {int subtype; } ;
typedef TYPE_2__ bot_match_t ;


 int ACTION_AFFIRMATIVE ;
 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotGetTeamMateTaskPreference (TYPE_1__*,int) ;
 int BotSetTeamMateTaskPreference (TYPE_1__*,int,int) ;
 int BotVoiceChatOnly (TYPE_1__*,int,int ) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int ClientName (int ,char*,int) ;
 int EasyClientName (int,char*,int) ;
 int MAX_MESSAGE_SIZE ;
 int MAX_NETNAME ;
 int NETNAME ;
 scalar_t__ Q_stricmp (char*,int ) ;



 int TEAMTP_ATTACKER ;
 int TEAMTP_DEFENDER ;
 int VOICECHAT_YES ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (TYPE_2__*,int ,char*,int) ;
 int trap_EA_Action (int ,int ) ;

void BotMatch_TaskPreference(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_NETNAME];
 char teammatename[MAX_MESSAGE_SIZE];
 int teammate, preference;

 ClientName(bs->client, netname, sizeof(netname));
 if (Q_stricmp(netname, bs->teamleader) != 0) return;

 trap_BotMatchVariable(match, NETNAME, teammatename, sizeof(teammatename));
 teammate = ClientFromName(teammatename);
 if (teammate < 0) return;

 preference = BotGetTeamMateTaskPreference(bs, teammate);
 switch(match->subtype)
 {
  case 129:
  {
   preference &= ~TEAMTP_ATTACKER;
   preference |= TEAMTP_DEFENDER;
   break;
  }
  case 130:
  {
   preference &= ~TEAMTP_DEFENDER;
   preference |= TEAMTP_ATTACKER;
   break;
  }
  case 128:
  {
   preference &= ~(TEAMTP_ATTACKER|TEAMTP_DEFENDER);
   break;
  }
 }
 BotSetTeamMateTaskPreference(bs, teammate, preference);

 EasyClientName(teammate, teammatename, sizeof(teammatename));
 BotAI_BotInitialChat(bs, "keepinmind", teammatename, ((void*)0));
 trap_BotEnterChat(bs->cs, teammate, CHAT_TELL);
 BotVoiceChatOnly(bs, teammate, VOICECHAT_YES);
 trap_EA_Action(bs->client, ACTION_AFFIRMATIVE);
}
