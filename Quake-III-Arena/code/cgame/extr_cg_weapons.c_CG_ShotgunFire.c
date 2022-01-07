
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int trBase; } ;
struct TYPE_11__ {int otherEntityNum; int eventParm; int origin2; TYPE_3__ pos; } ;
typedef TYPE_4__ entityState_t ;
struct TYPE_13__ {int time; } ;
struct TYPE_9__ {int shotgunSmokePuffShader; } ;
struct TYPE_8__ {scalar_t__ hardwareType; } ;
struct TYPE_12__ {TYPE_2__ media; TYPE_1__ glconfig; } ;


 int CG_ShotgunPattern (int ,int ,int ,int ) ;
 int CG_SmokePuff (int ,int ,int,int,int,int,float,int,int ,int ,int ,int ) ;
 int CONTENTS_WATER ;
 scalar_t__ GLHW_RAGEPRO ;
 int LEF_PUFF_DONT_SCALE ;
 int VectorAdd (int ,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,int,int ) ;
 int VectorSet (int ,int ,int ,int) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_6__ cg ;
 TYPE_5__ cgs ;
 int trap_CM_PointContents (int ,int ) ;

void CG_ShotgunFire( entityState_t *es ) {
 vec3_t v;
 int contents;

 VectorSubtract( es->origin2, es->pos.trBase, v );
 VectorNormalize( v );
 VectorScale( v, 32, v );
 VectorAdd( es->pos.trBase, v, v );
 if ( cgs.glconfig.hardwareType != GLHW_RAGEPRO ) {

  vec3_t up;

  contents = trap_CM_PointContents( es->pos.trBase, 0 );
  if ( !( contents & CONTENTS_WATER ) ) {
   VectorSet( up, 0, 0, 8 );
   CG_SmokePuff( v, up, 32, 1, 1, 1, 0.33f, 900, cg.time, 0, LEF_PUFF_DONT_SCALE, cgs.media.shotgunSmokePuffShader );
  }
 }
 CG_ShotgunPattern( es->pos.trBase, es->origin2, es->eventParm, es->otherEntityNum );
}
