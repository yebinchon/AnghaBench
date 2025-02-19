
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int qboolean ;
struct TYPE_12__ {int trBase; } ;
struct TYPE_11__ {int trBase; } ;
struct TYPE_13__ {int legsAnim; TYPE_4__ apos; TYPE_3__ pos; } ;
struct TYPE_14__ {TYPE_5__ currentState; int currentValid; } ;
typedef TYPE_6__ centity_t ;
struct TYPE_15__ {TYPE_2__* snap; } ;
struct TYPE_9__ {int clientNum; int viewangles; scalar_t__ viewheight; int origin; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;


 int ANIM_TOGGLEBIT ;
 int AngleVectors (int ,int *,int *,int *) ;
 scalar_t__ CROUCH_VIEWHEIGHT ;
 scalar_t__ DEFAULT_VIEWHEIGHT ;
 int LEGS_IDLECR ;
 int LEGS_WALKCR ;
 int VectorCopy (int ,int *) ;
 int VectorMA (int *,int,int *,int *) ;
 TYPE_8__ cg ;
 TYPE_6__* cg_entities ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CG_CalcMuzzlePoint( int entityNum, vec3_t muzzle ) {
 vec3_t forward;
 centity_t *cent;
 int anim;

 if ( entityNum == cg.snap->ps.clientNum ) {
  VectorCopy( cg.snap->ps.origin, muzzle );
  muzzle[2] += cg.snap->ps.viewheight;
  AngleVectors( cg.snap->ps.viewangles, forward, ((void*)0), ((void*)0) );
  VectorMA( muzzle, 14, forward, muzzle );
  return qtrue;
 }

 cent = &cg_entities[entityNum];
 if ( !cent->currentValid ) {
  return qfalse;
 }

 VectorCopy( cent->currentState.pos.trBase, muzzle );

 AngleVectors( cent->currentState.apos.trBase, forward, ((void*)0), ((void*)0) );
 anim = cent->currentState.legsAnim & ~ANIM_TOGGLEBIT;
 if ( anim == LEGS_WALKCR || anim == LEGS_IDLECR ) {
  muzzle[2] += CROUCH_VIEWHEIGHT;
 } else {
  muzzle[2] += DEFAULT_VIEWHEIGHT;
 }

 VectorMA( muzzle, 14, forward, muzzle );

 return qtrue;

}
