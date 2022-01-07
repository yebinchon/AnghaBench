
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 int BotPrintTeamGoal (int *) ;
 int BotTeamFlagCarrier (int *) ;
 int BotVoiceChat_FollowMe (int *,int,int) ;

void BotVoiceChat_FollowFlagCarrier(bot_state_t *bs, int client, int mode) {
 int carrier;

 carrier = BotTeamFlagCarrier(bs);
 if (carrier >= 0)
  BotVoiceChat_FollowMe(bs, carrier, mode);



}
