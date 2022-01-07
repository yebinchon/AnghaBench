
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int qboolean ;
struct TYPE_5__ {int* origin; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_6__ {int pos; } ;
typedef TYPE_2__ entityState_t ;


 int BG_EvaluateTrajectory (int *,int,int*) ;
 int qfalse ;
 int qtrue ;

qboolean BG_PlayerTouchesItem( playerState_t *ps, entityState_t *item, int atTime ) {
 vec3_t origin;

 BG_EvaluateTrajectory( &item->pos, atTime, origin );


 if ( ps->origin[0] - origin[0] > 44
  || ps->origin[0] - origin[0] < -50
  || ps->origin[1] - origin[1] > 36
  || ps->origin[1] - origin[1] < -36
  || ps->origin[2] - origin[2] > 36
  || ps->origin[2] - origin[2] < -36 ) {
  return qfalse;
 }

 return qtrue;
}
