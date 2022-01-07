
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int time; } ;
struct TYPE_4__ {int think; int nextthink; } ;


 int CelebrateStop ;
 scalar_t__ GT_SINGLE_PLAYER ;
 TYPE_3__ g_gametype ;
 TYPE_2__ level ;
 TYPE_1__* podium1 ;

void Svcmd_AbortPodium_f( void ) {
 if( g_gametype.integer != GT_SINGLE_PLAYER ) {
  return;
 }

 if( podium1 ) {
  podium1->nextthink = level.time;
  podium1->think = CelebrateStop;
 }
}
