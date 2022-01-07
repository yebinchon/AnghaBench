
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* animation; int frame; int oldFrame; int oldFrameTime; int frameTime; } ;
typedef TYPE_2__ lerpFrame_t ;
typedef int clientInfo_t ;
struct TYPE_8__ {int time; } ;
struct TYPE_6__ {int firstFrame; } ;


 int CG_SetLerpFrameAnimation (int *,TYPE_2__*,int) ;
 TYPE_3__ cg ;

__attribute__((used)) static void CG_ClearLerpFrame( clientInfo_t *ci, lerpFrame_t *lf, int animationNumber ) {
 lf->frameTime = lf->oldFrameTime = cg.time;
 CG_SetLerpFrameAnimation( ci, lf, animationNumber );
 lf->oldFrame = lf->frame = lf->animation->firstFrame;
}
