
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netname ;
struct TYPE_3__ {char* teamleader; } ;
typedef TYPE_1__ bot_state_t ;


 int ClientName (int,char*,int) ;
 int MAX_MESSAGE_SIZE ;
 int Q_stricmp (char*,int ) ;
 int * notleader ;
 int qtrue ;

void BotVoiceChat_StopLeader(bot_state_t *bs, int client, int mode) {
 char netname[MAX_MESSAGE_SIZE];

 if (!Q_stricmp(bs->teamleader, ClientName(client, netname, sizeof(netname)))) {
  bs->teamleader[0] = '\0';
  notleader[client] = qtrue;
 }
}
