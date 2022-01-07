
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {int cs; } ;
typedef TYPE_1__ bot_state_t ;


 int BotSayTeamOrderAlways (TYPE_1__*,int) ;
 int MAX_MESSAGE_SIZE ;
 int trap_BotGetChatMessage (int ,char*,int) ;

void BotSayTeamOrder(bot_state_t *bs, int toclient) {






 BotSayTeamOrderAlways(bs, toclient);

}
