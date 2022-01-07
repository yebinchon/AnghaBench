
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int* trDelta; } ;
struct TYPE_9__ {TYPE_7__ pos; int leType; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_11__ {int time; int frametime; } ;
struct TYPE_8__ {int bloodTrailShader; } ;
struct TYPE_10__ {TYPE_1__ media; } ;


 int BG_EvaluateTrajectory (TYPE_7__*,int,int ) ;
 TYPE_2__* CG_SmokePuff (int ,int ,int,int,int,int,int,int,int,int ,int ,int ) ;
 int LE_FALL_SCALE_FADE ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int vec3_origin ;

void CG_BloodTrail( localEntity_t *le ) {
 int t;
 int t2;
 int step;
 vec3_t newOrigin;
 localEntity_t *blood;

 step = 150;
 t = step * ( (cg.time - cg.frametime + step ) / step );
 t2 = step * ( cg.time / step );

 for ( ; t <= t2; t += step ) {
  BG_EvaluateTrajectory( &le->pos, t, newOrigin );

  blood = CG_SmokePuff( newOrigin, vec3_origin,
       20,
       1, 1, 1, 1,
       2000,
       t,
       0,
       0,
       cgs.media.bloodTrailShader );

  blood->leType = LE_FALL_SCALE_FADE;

  blood->pos.trDelta[2] = 40;
 }
}
