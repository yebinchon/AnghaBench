
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int teammate ;
typedef int netname ;
struct TYPE_6__ {char* teamleader; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_7__ {int subtype; } ;
typedef TYPE_2__ bot_match_t ;


 int ClientName (int,char*,int) ;
 int FindClientByName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int Q_stricmp (char*,int ) ;
 int ST_I ;
 int TEAMMATE ;
 int TeamPlayIsOn () ;
 int * notleader ;
 int qtrue ;
 int trap_BotMatchVariable (TYPE_2__*,int ,char*,int) ;

void BotMatch_StopTeamLeaderShip(bot_state_t *bs, bot_match_t *match) {
 int client;
 char teammate[MAX_MESSAGE_SIZE];
 char netname[MAX_MESSAGE_SIZE];

 if (!TeamPlayIsOn()) return;

 trap_BotMatchVariable(match, TEAMMATE, teammate, sizeof(teammate));

 if (match->subtype & ST_I) {
  trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
  client = FindClientByName(netname);
 }

 else {
  client = FindClientByName(teammate);
 }
 if (client >= 0) {
  if (!Q_stricmp(bs->teamleader, ClientName(client, netname, sizeof(netname)))) {
   bs->teamleader[0] = '\0';
   notleader[client] = qtrue;
  }
 }
}
