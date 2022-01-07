
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int origin; } ;
typedef TYPE_1__ bot_movestate_t ;


 scalar_t__ AAS_Swimming (int ) ;
 TYPE_1__* BotMoveStateFromHandle (int) ;
 int BotSwimInDirection (TYPE_1__*,int ,float,int) ;
 int BotWalkInDirection (TYPE_1__*,int ,float,int) ;
 int qfalse ;

int BotMoveInDirection(int movestate, vec3_t dir, float speed, int type)
{
 bot_movestate_t *ms;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return qfalse;

 if (AAS_Swimming(ms->origin))
 {
  return BotSwimInDirection(ms, dir, speed, type);
 }
 else
 {
  return BotWalkInDirection(ms, dir, speed, type);
 }
}
