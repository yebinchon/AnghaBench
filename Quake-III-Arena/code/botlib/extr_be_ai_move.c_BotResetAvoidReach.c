
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avoidreachtries; int avoidreachtimes; int avoidreach; } ;
typedef TYPE_1__ bot_movestate_t ;


 TYPE_1__* BotMoveStateFromHandle (int) ;
 int Com_Memset (int ,int ,int) ;
 int MAX_AVOIDREACH ;

void BotResetAvoidReach(int movestate)
{
 bot_movestate_t *ms;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return;
 Com_Memset(ms->avoidreach, 0, MAX_AVOIDREACH * sizeof(int));
 Com_Memset(ms->avoidreachtimes, 0, MAX_AVOIDREACH * sizeof(float));
 Com_Memset(ms->avoidreachtries, 0, MAX_AVOIDREACH * sizeof(int));
}
