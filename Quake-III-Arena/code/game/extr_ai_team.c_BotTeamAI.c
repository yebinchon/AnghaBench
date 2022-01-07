
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int netname ;
struct TYPE_13__ {scalar_t__ askteamleader_time; scalar_t__ becometeamleader_time; scalar_t__ entergame_time; char* teamleader; int numteammates; scalar_t__ teamgiveorders_time; scalar_t__ lastflagcapture_time; void* forceorders; int ctfstrategy; void* flagstatuschanged; int client; int cs; } ;
typedef TYPE_1__ bot_state_t ;


 int Bot1FCTFOrders (TYPE_1__*) ;
 int BotAI_BotInitialChat (TYPE_1__*,char*,int *) ;
 int BotCTFOrders (TYPE_1__*) ;
 int BotHarvesterOrders (TYPE_1__*) ;
 int BotNumTeamMates (TYPE_1__*) ;
 int BotObeliskOrders (TYPE_1__*) ;
 int BotSayVoiceTeamOrder (TYPE_1__*,int,int ) ;
 int BotTeamOrders (TYPE_1__*) ;
 int BotValidTeamLeader (TYPE_1__*) ;
 int CHAT_TEAM ;
 int CTFS_AGRESSIVE ;
 int ClientName (int ,char*,int) ;
 int FindHumanTeamLeader (TYPE_1__*) ;
 scalar_t__ FloatTime () ;





 int MAX_NETNAME ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int VOICECHAT_STARTLEADER ;
 int gametype ;
 void* qfalse ;
 double random () ;
 int strncpy (char*,char*,int) ;
 int trap_BotEnterChat (int ,int ,int ) ;

void BotTeamAI(bot_state_t *bs) {
 int numteammates;
 char netname[MAX_NETNAME];


 if ( gametype < 128 )
  return;

 if (!BotValidTeamLeader(bs)) {

  if (!FindHumanTeamLeader(bs)) {

   if (!bs->askteamleader_time && !bs->becometeamleader_time) {
    if (bs->entergame_time + 10 > FloatTime()) {
     bs->askteamleader_time = FloatTime() + 5 + random() * 10;
    }
    else {
     bs->becometeamleader_time = FloatTime() + 5 + random() * 10;
    }
   }
   if (bs->askteamleader_time && bs->askteamleader_time < FloatTime()) {

    BotAI_BotInitialChat(bs, "whoisteamleader", ((void*)0));
    trap_BotEnterChat(bs->cs, 0, CHAT_TEAM);
    bs->askteamleader_time = 0;
    bs->becometeamleader_time = FloatTime() + 8 + random() * 10;
   }
   if (bs->becometeamleader_time && bs->becometeamleader_time < FloatTime()) {
    BotAI_BotInitialChat(bs, "iamteamleader", ((void*)0));
    trap_BotEnterChat(bs->cs, 0, CHAT_TEAM);
    BotSayVoiceTeamOrder(bs, -1, VOICECHAT_STARTLEADER);
    ClientName(bs->client, netname, sizeof(netname));
    strncpy(bs->teamleader, netname, sizeof(bs->teamleader));
    bs->teamleader[sizeof(bs->teamleader)] = '\0';
    bs->becometeamleader_time = 0;
   }
   return;
  }
 }
 bs->askteamleader_time = 0;
 bs->becometeamleader_time = 0;


 ClientName(bs->client, netname, sizeof(netname));
 if (Q_stricmp(netname, bs->teamleader) != 0) return;

 numteammates = BotNumTeamMates(bs);

 switch(gametype) {
  case 128:
  {
   if (bs->numteammates != numteammates || bs->forceorders) {
    bs->teamgiveorders_time = FloatTime();
    bs->numteammates = numteammates;
    bs->forceorders = qfalse;
   }

   if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 5) {
    BotTeamOrders(bs);

    bs->teamgiveorders_time = FloatTime() + 120;
   }
   break;
  }
  case 131:
  {


   if (bs->numteammates != numteammates || bs->flagstatuschanged || bs->forceorders) {
    bs->teamgiveorders_time = FloatTime();
    bs->numteammates = numteammates;
    bs->flagstatuschanged = qfalse;
    bs->forceorders = qfalse;
   }

   if (bs->lastflagcapture_time < FloatTime() - 240) {
    bs->lastflagcapture_time = FloatTime();

    if (random() < 0.4) {
     bs->ctfstrategy ^= CTFS_AGRESSIVE;
     bs->teamgiveorders_time = FloatTime();
    }
   }

   if (bs->teamgiveorders_time && bs->teamgiveorders_time < FloatTime() - 3) {
    BotCTFOrders(bs);

    bs->teamgiveorders_time = 0;
   }
   break;
  }
 }
}
