
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {int ms; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_6__ {int movedir; int failure; } ;
typedef TYPE_2__ bot_moveresult_t ;


 int AngleVectors (int*,int*,int *,int *) ;
 int MOVE_WALK ;
 int VectorCopy (int*,int ) ;
 int qfalse ;
 int random () ;
 int trap_BotMoveInDirection (int ,int*,int,int ) ;

void BotRandomMove(bot_state_t *bs, bot_moveresult_t *moveresult) {
 vec3_t dir, angles;

 angles[0] = 0;
 angles[1] = random() * 360;
 angles[2] = 0;
 AngleVectors(angles, dir, ((void*)0), ((void*)0));

 trap_BotMoveInDirection(bs->ms, dir, 400, MOVE_WALK);

 moveresult->failure = qfalse;
 VectorCopy(dir, moveresult->movedir);
}
