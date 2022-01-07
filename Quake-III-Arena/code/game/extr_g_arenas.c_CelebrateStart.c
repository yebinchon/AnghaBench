
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int torsoAnim; } ;
struct TYPE_7__ {int think; scalar_t__ nextthink; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_8__ {scalar_t__ time; } ;


 int ANIM_TOGGLEBIT ;
 int CelebrateStop ;
 int EV_TAUNT ;
 int G_AddEvent (TYPE_2__*,int ,int ) ;
 scalar_t__ TIMER_GESTURE ;
 int TORSO_GESTURE ;
 TYPE_3__ level ;

__attribute__((used)) static void CelebrateStart( gentity_t *player ) {
 player->s.torsoAnim = ( ( player->s.torsoAnim & ANIM_TOGGLEBIT ) ^ ANIM_TOGGLEBIT ) | TORSO_GESTURE;
 player->nextthink = level.time + TIMER_GESTURE;
 player->think = CelebrateStop;






 G_AddEvent(player, EV_TAUNT, 0);
}
