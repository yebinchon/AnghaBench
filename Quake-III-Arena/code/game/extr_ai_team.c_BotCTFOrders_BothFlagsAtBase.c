
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int teammates ;
typedef int name ;
struct TYPE_8__ {int ctfstrategy; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotSayTeamOrder (TYPE_1__*,int) ;
 int BotSayVoiceTeamOrder (TYPE_1__*,int,int ) ;
 int BotSortTeamMatesByBaseTravelTime (TYPE_1__*,int*,int) ;
 int BotSortTeamMatesByTaskPreference (TYPE_1__*,int*,int) ;
 int CTFS_AGRESSIVE ;
 int ClientName (int,char*,int) ;
 int MAX_CLIENTS ;
 int MAX_NETNAME ;
 int VOICECHAT_DEFEND ;
 int VOICECHAT_GETFLAG ;

void BotCTFOrders_BothFlagsAtBase(bot_state_t *bs) {
 int numteammates, defenders, attackers, i;
 int teammates[MAX_CLIENTS];
 char name[MAX_NETNAME];


 numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));

 BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);

 if (!(bs->ctfstrategy & CTFS_AGRESSIVE)) {

  switch(numteammates) {
   case 1: break;
   case 2:
   {

    ClientName(teammates[0], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[0]);
    BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);

    ClientName(teammates[1], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[1]);
    BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
    break;
   }
   case 3:
   {

    ClientName(teammates[0], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[0]);
    BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);

    ClientName(teammates[1], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[1]);
    BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_DEFEND);

    ClientName(teammates[2], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[2]);
    BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
    break;
   }
   default:
   {
    defenders = (int) (float) numteammates * 0.5 + 0.5;
    if (defenders > 5) defenders = 5;
    attackers = (int) (float) numteammates * 0.4 + 0.5;
    if (attackers > 4) attackers = 4;
    for (i = 0; i < defenders; i++) {

     ClientName(teammates[i], name, sizeof(name));
     BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
     BotSayTeamOrder(bs, teammates[i]);
     BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
    }
    for (i = 0; i < attackers; i++) {

     ClientName(teammates[numteammates - i - 1], name, sizeof(name));
     BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
     BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
     BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
    }

    break;
   }
  }
 }
 else {

  switch(numteammates) {
   case 1: break;
   case 2:
   {

    ClientName(teammates[0], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[0]);
    BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);

    ClientName(teammates[1], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[1]);
    BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);
    break;
   }
   case 3:
   {

    ClientName(teammates[0], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[0]);
    BotSayVoiceTeamOrder(bs, teammates[0], VOICECHAT_DEFEND);

    ClientName(teammates[1], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[1]);
    BotSayVoiceTeamOrder(bs, teammates[1], VOICECHAT_GETFLAG);

    ClientName(teammates[2], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[2]);
    BotSayVoiceTeamOrder(bs, teammates[2], VOICECHAT_GETFLAG);
    break;
   }
   default:
   {
    defenders = (int) (float) numteammates * 0.4 + 0.5;
    if (defenders > 4) defenders = 4;
    attackers = (int) (float) numteammates * 0.5 + 0.5;
    if (attackers > 5) attackers = 5;
    for (i = 0; i < defenders; i++) {

     ClientName(teammates[i], name, sizeof(name));
     BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
     BotSayTeamOrder(bs, teammates[i]);
     BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
    }
    for (i = 0; i < attackers; i++) {

     ClientName(teammates[numteammates - i - 1], name, sizeof(name));
     BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
     BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
     BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
    }

    break;
   }
  }
 }
}
