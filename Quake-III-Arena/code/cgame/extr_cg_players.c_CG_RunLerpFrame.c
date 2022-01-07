
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {double oldFrame; double frame; double backlerp; int animationNumber; scalar_t__ frameTime; scalar_t__ oldFrameTime; scalar_t__ animationTime; TYPE_2__* animation; } ;
typedef TYPE_1__ lerpFrame_t ;
typedef int clientInfo_t ;
struct TYPE_9__ {int frameLerp; int numFrames; int loopFrames; int firstFrame; scalar_t__ flipflop; scalar_t__ reversed; } ;
typedef TYPE_2__ animation_t ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;


 int CG_Printf (char*) ;
 int CG_SetLerpFrameAnimation (int *,TYPE_1__*,int) ;
 TYPE_5__ cg ;
 TYPE_4__ cg_animSpeed ;
 TYPE_3__ cg_debugAnim ;

__attribute__((used)) static void CG_RunLerpFrame( clientInfo_t *ci, lerpFrame_t *lf, int newAnimation, float speedScale ) {
 int f, numFrames;
 animation_t *anim;


 if ( cg_animSpeed.integer == 0 ) {
  lf->oldFrame = lf->frame = lf->backlerp = 0;
  return;
 }


 if ( newAnimation != lf->animationNumber || !lf->animation ) {
  CG_SetLerpFrameAnimation( ci, lf, newAnimation );
 }



 if ( cg.time >= lf->frameTime ) {
  lf->oldFrame = lf->frame;
  lf->oldFrameTime = lf->frameTime;


  anim = lf->animation;
  if ( !anim->frameLerp ) {
   return;
  }
  if ( cg.time < lf->animationTime ) {
   lf->frameTime = lf->animationTime;
  } else {
   lf->frameTime = lf->oldFrameTime + anim->frameLerp;
  }
  f = ( lf->frameTime - lf->animationTime ) / anim->frameLerp;
  f *= speedScale;

  numFrames = anim->numFrames;
  if (anim->flipflop) {
   numFrames *= 2;
  }
  if ( f >= numFrames ) {
   f -= numFrames;
   if ( anim->loopFrames ) {
    f %= anim->loopFrames;
    f += anim->numFrames - anim->loopFrames;
   } else {
    f = numFrames - 1;


    lf->frameTime = cg.time;
   }
  }
  if ( anim->reversed ) {
   lf->frame = anim->firstFrame + anim->numFrames - 1 - f;
  }
  else if (anim->flipflop && f>=anim->numFrames) {
   lf->frame = anim->firstFrame + anim->numFrames - 1 - (f%anim->numFrames);
  }
  else {
   lf->frame = anim->firstFrame + f;
  }
  if ( cg.time > lf->frameTime ) {
   lf->frameTime = cg.time;
   if ( cg_debugAnim.integer ) {
    CG_Printf( "Clamp lf->frameTime\n");
   }
  }
 }

 if ( lf->frameTime > cg.time + 200 ) {
  lf->frameTime = cg.time;
 }

 if ( lf->oldFrameTime > cg.time ) {
  lf->oldFrameTime = cg.time;
 }

 if ( lf->frameTime == lf->oldFrameTime ) {
  lf->backlerp = 0;
 } else {
  lf->backlerp = 1.0 - (float)( cg.time - lf->oldFrameTime ) / ( lf->frameTime - lf->oldFrameTime );
 }
}
