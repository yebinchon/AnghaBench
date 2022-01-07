
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int order_time; int decisionmaker; int client; int ordered; } ;
typedef TYPE_1__ bot_state_t ;


 int ACTION_NEGATIVE ;
 int BotVoiceChat (TYPE_1__*,int ,int ) ;
 int FloatTime () ;
 int VOICECHAT_NO ;
 int trap_EA_Action (int ,int ) ;

void BotRefuseOrder(bot_state_t *bs) {
 if (!bs->ordered)
  return;

 if ( bs->order_time && bs->order_time > FloatTime() - 10 ) {
  trap_EA_Action(bs->client, ACTION_NEGATIVE);
  BotVoiceChat(bs, bs->decisionmaker, VOICECHAT_NO);
  bs->order_time = 0;
 }
}
