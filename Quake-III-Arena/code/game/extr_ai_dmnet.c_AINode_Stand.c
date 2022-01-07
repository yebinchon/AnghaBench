
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lastframe_health; scalar_t__* inventory; scalar_t__ standfindenemy_time; scalar_t__ stand_time; int chatto; int cs; int client; } ;
typedef TYPE_1__ bot_state_t ;


 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Seek_LTG (TYPE_1__*,char*) ;
 scalar_t__ BotChatTime (TYPE_1__*) ;
 scalar_t__ BotChat_HitTalking (TYPE_1__*) ;
 scalar_t__ BotFindEnemy (TYPE_1__*,int) ;
 scalar_t__ FloatTime () ;
 size_t INVENTORY_HEALTH ;
 int qfalse ;
 int qtrue ;
 int trap_BotEnterChat (int ,int ,int ) ;
 int trap_EA_Talk (int ) ;

int AINode_Stand(bot_state_t *bs) {


 if (bs->lastframe_health > bs->inventory[INVENTORY_HEALTH]) {
  if (BotChat_HitTalking(bs)) {
   bs->standfindenemy_time = FloatTime() + BotChatTime(bs) + 0.1;
   bs->stand_time = FloatTime() + BotChatTime(bs) + 0.1;
  }
 }
 if (bs->standfindenemy_time < FloatTime()) {
  if (BotFindEnemy(bs, -1)) {
   AIEnter_Battle_Fight(bs, "stand: found enemy");
   return qfalse;
  }
  bs->standfindenemy_time = FloatTime() + 1;
 }

 trap_EA_Talk(bs->client);

 if (bs->stand_time < FloatTime()) {
  trap_BotEnterChat(bs->cs, 0, bs->chatto);
  AIEnter_Seek_LTG(bs, "stand: time out");
  return qfalse;
 }

 return qtrue;
}
