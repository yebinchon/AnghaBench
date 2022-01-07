
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 int BotVoiceChat_Defend (int *,int,int) ;

void BotVoiceChat_DefendFlag(bot_state_t *bs, int client, int mode) {
 BotVoiceChat_Defend(bs, client, mode);
}
