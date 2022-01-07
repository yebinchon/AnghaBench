
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netname ;
struct TYPE_3__ {int client; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_Print (int ,int ) ;
 int ClientName (int ,char*,int) ;
 int Com_sprintf (int ,int,char*,char*,int ,char*,char*,char*) ;
 int FloatTime () ;
 int MAX_NETNAME ;
 int PRT_MESSAGE ;
 int * nodeswitch ;
 size_t numnodeswitches ;

void BotRecordNodeSwitch(bot_state_t *bs, char *node, char *str, char *s) {
 char netname[MAX_NETNAME];

 ClientName(bs->client, netname, sizeof(netname));
 Com_sprintf(nodeswitch[numnodeswitches], 144, "%s at %2.1f entered %s: %s from %s\n", netname, FloatTime(), node, str, s);





 numnodeswitches++;
}
