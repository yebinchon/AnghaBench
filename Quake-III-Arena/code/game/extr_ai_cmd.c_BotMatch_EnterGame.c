
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netname ;
typedef int bot_state_t ;
typedef int bot_match_t ;


 int FindClientByName (char*) ;
 int MAX_NETNAME ;
 int NETNAME ;
 int * notleader ;
 int qfalse ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_EnterGame(bot_state_t *bs, bot_match_t *match) {
 int client;
 char netname[MAX_NETNAME];

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = FindClientByName(netname);
 if (client >= 0) {
  notleader[client] = qfalse;
 }



}
