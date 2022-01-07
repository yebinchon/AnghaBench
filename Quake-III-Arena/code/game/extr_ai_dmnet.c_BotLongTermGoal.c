
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int teammate ;
struct TYPE_10__ {int areanum; int origin; int maxs; int mins; int entitynum; } ;
struct TYPE_8__ {scalar_t__ lead_time; int leadmessage_time; int leadvisible_time; int leadbackup_time; double* ideal_viewangles; int origin; int teammate; int cs; int lead_teammate; TYPE_3__ lead_teamgoal; int viewangles; int eye; int entitynum; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_goal_t ;
struct TYPE_9__ {int origin; scalar_t__ valid; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,int *) ;
 int BotEntityInfo (int ,TYPE_2__*) ;
 scalar_t__ BotEntityVisible (int ,int ,int ,int,int ) ;
 int BotGetLongTermGoal (TYPE_1__*,int,int,int *) ;
 int BotPointAreaNum (int ) ;
 int CHAT_TELL ;
 int EasyClientName (int ,char*,int) ;
 int FloatTime () ;
 int MAX_MESSAGE_SIZE ;
 float Square (int) ;
 int VectorCopy (int ,int ) ;
 float VectorLengthSquared (int ) ;
 int VectorSet (int ,int,int,int) ;
 int VectorSubtract (int ,int ,int ) ;
 int memcpy (int *,TYPE_3__*,int) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ trap_AAS_AreaReachability (int) ;
 int trap_BotEnterChat (int ,int ,int ) ;
 int vectoangles (int ,double*) ;

int BotLongTermGoal(bot_state_t *bs, int tfl, int retreat, bot_goal_t *goal) {
 aas_entityinfo_t entinfo;
 char teammate[MAX_MESSAGE_SIZE];
 float squaredist;
 int areanum;
 vec3_t dir;




 if (bs->lead_time > 0 && !retreat) {
  if (bs->lead_time < FloatTime()) {
   BotAI_BotInitialChat(bs, "lead_stop", EasyClientName(bs->lead_teammate, teammate, sizeof(teammate)), ((void*)0));
   trap_BotEnterChat(bs->cs, bs->teammate, CHAT_TELL);
   bs->lead_time = 0;
   return BotGetLongTermGoal(bs, tfl, retreat, goal);
  }

  if (bs->leadmessage_time < 0 && -bs->leadmessage_time < FloatTime()) {
   BotAI_BotInitialChat(bs, "followme", EasyClientName(bs->lead_teammate, teammate, sizeof(teammate)), ((void*)0));
   trap_BotEnterChat(bs->cs, bs->teammate, CHAT_TELL);
   bs->leadmessage_time = FloatTime();
  }

  BotEntityInfo(bs->lead_teammate, &entinfo);

  if (entinfo.valid) {
   areanum = BotPointAreaNum(entinfo.origin);
   if (areanum && trap_AAS_AreaReachability(areanum)) {

    bs->lead_teamgoal.entitynum = bs->lead_teammate;
    bs->lead_teamgoal.areanum = areanum;
    VectorCopy(entinfo.origin, bs->lead_teamgoal.origin);
    VectorSet(bs->lead_teamgoal.mins, -8, -8, -8);
    VectorSet(bs->lead_teamgoal.maxs, 8, 8, 8);
   }
  }

  if (BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->lead_teammate)) {
   bs->leadvisible_time = FloatTime();
  }

  if (bs->leadvisible_time < FloatTime() - 1) {
   bs->leadbackup_time = FloatTime() + 2;
  }

  VectorSubtract(bs->origin, bs->lead_teamgoal.origin, dir);
  squaredist = VectorLengthSquared(dir);

  if (bs->leadbackup_time > FloatTime()) {
   if (bs->leadmessage_time < FloatTime() - 20) {
    BotAI_BotInitialChat(bs, "followme", EasyClientName(bs->lead_teammate, teammate, sizeof(teammate)), ((void*)0));
    trap_BotEnterChat(bs->cs, bs->teammate, CHAT_TELL);
    bs->leadmessage_time = FloatTime();
   }

   if (squaredist < Square(100)) {
    bs->leadbackup_time = 0;
   }

   memcpy(goal, &bs->lead_teamgoal, sizeof(bot_goal_t));
   return qtrue;
  }
  else {

   if (squaredist > Square(500)) {
    if (bs->leadmessage_time < FloatTime() - 20) {
     BotAI_BotInitialChat(bs, "followme", EasyClientName(bs->lead_teammate, teammate, sizeof(teammate)), ((void*)0));
     trap_BotEnterChat(bs->cs, bs->teammate, CHAT_TELL);
     bs->leadmessage_time = FloatTime();
    }

    VectorSubtract(entinfo.origin, bs->origin, dir);
    vectoangles(dir, bs->ideal_viewangles);
    bs->ideal_viewangles[2] *= 0.5;

    return qfalse;
   }
  }
 }
 return BotGetLongTermGoal(bs, tfl, retreat, goal);
}
