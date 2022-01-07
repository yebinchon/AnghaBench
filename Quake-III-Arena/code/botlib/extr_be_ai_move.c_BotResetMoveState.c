
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_movestate_t ;


 int * BotMoveStateFromHandle (int) ;
 int Com_Memset (int *,int ,int) ;

void BotResetMoveState(int movestate)
{
 bot_movestate_t *ms;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return;
 Com_Memset(ms, 0, sizeof(bot_movestate_t));
}
