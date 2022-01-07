
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int teammate ;
struct TYPE_6__ {char* teamleader; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_7__ {int subtype; } ;
typedef TYPE_2__ bot_match_t ;


 int ClientName (int,char*,int) ;
 int FindClientByName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int ST_I ;
 int TEAMMATE ;
 int TeamPlayIsOn () ;
 int strncpy (char*,char*,int) ;
 int trap_BotMatchVariable (TYPE_2__*,int ,char*,int) ;

void BotMatch_StartTeamLeaderShip(bot_state_t *bs, bot_match_t *match) {
 int client;
 char teammate[MAX_MESSAGE_SIZE];

 if (!TeamPlayIsOn()) return;

 if (match->subtype & ST_I) {

  trap_BotMatchVariable(match, NETNAME, teammate, sizeof(teammate));
  strncpy(bs->teamleader, teammate, sizeof(bs->teamleader));
  bs->teamleader[sizeof(bs->teamleader)] = '\0';
 }

 else {

  trap_BotMatchVariable(match, TEAMMATE, teammate, sizeof(teammate));
  client = FindClientByName(teammate);
  if (client >= 0) ClientName(client, bs->teamleader, sizeof(bs->teamleader));
 }
}
