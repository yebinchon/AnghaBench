
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netname ;
struct TYPE_3__ {int forceorders; int teamleader; int client; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int ClientName (int ,char*,int) ;
 int MAX_NETNAME ;
 scalar_t__ Q_stricmp (char*,int ) ;
 int qtrue ;

void BotMatch_WhatIsMyCommand(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_NETNAME];

 ClientName(bs->client, netname, sizeof(netname));
 if (Q_stricmp(netname, bs->teamleader) != 0) return;
 bs->forceorders = qtrue;
}
