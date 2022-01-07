
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int netname ;
typedef int goalname ;
struct TYPE_6__ {int entitynum; int number; } ;
struct TYPE_7__ {int ltgtype; int cs; TYPE_1__ teamgoal; int teammate; } ;
typedef TYPE_2__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_2__*,char*,char*,...) ;
 int BotAddressedToBot (TYPE_2__*,int *) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int ClientName (int ,char*,int) ;
 int EasyClientName (int ,char*,int) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotGoalName (int ,char*,int) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_WhatAreYouDoing(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_MESSAGE_SIZE];
 char goalname[MAX_MESSAGE_SIZE];
 int client;


 if (!BotAddressedToBot(bs, match)) return;

 switch(bs->ltgtype) {
  case 128:
  {
   EasyClientName(bs->teammate, netname, sizeof(netname));
   BotAI_BotInitialChat(bs, "helping", netname, ((void*)0));
   break;
  }
  case 129:
  {
   EasyClientName(bs->teammate, netname, sizeof(netname));
   BotAI_BotInitialChat(bs, "accompanying", netname, ((void*)0));
   break;
  }
  case 137:
  {
   trap_BotGoalName(bs->teamgoal.number, goalname, sizeof(goalname));
   BotAI_BotInitialChat(bs, "defending", goalname, ((void*)0));
   break;
  }
  case 135:
  {
   trap_BotGoalName(bs->teamgoal.number, goalname, sizeof(goalname));
   BotAI_BotInitialChat(bs, "gettingitem", goalname, ((void*)0));
   break;
  }
  case 133:
  {
   ClientName(bs->teamgoal.entitynum, netname, sizeof(netname));
   BotAI_BotInitialChat(bs, "killing", netname, ((void*)0));
   break;
  }
  case 139:
  case 138:
  {
   BotAI_BotInitialChat(bs, "camping", ((void*)0));
   break;
  }
  case 132:
  {
   BotAI_BotInitialChat(bs, "patrolling", ((void*)0));
   break;
  }
  case 136:
  {
   BotAI_BotInitialChat(bs, "capturingflag", ((void*)0));
   break;
  }
  case 130:
  {
   BotAI_BotInitialChat(bs, "rushingbase", ((void*)0));
   break;
  }
  case 131:
  {
   BotAI_BotInitialChat(bs, "returningflag", ((void*)0));
   break;
  }
  default:
  {
   BotAI_BotInitialChat(bs, "roaming", ((void*)0));
   break;
  }
 }

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = ClientFromName(netname);
 trap_BotEnterChat(bs->cs, client, CHAT_TELL);
}
