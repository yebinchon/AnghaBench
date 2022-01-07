
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ viewportWidth; scalar_t__ viewportHeight; int frameCount; int frameSceneNum; } ;
typedef TYPE_2__ viewParms_t ;
struct TYPE_5__ {int numDrawSurfs; scalar_t__ drawSurfs; } ;
struct TYPE_7__ {TYPE_1__ refdef; int viewCount; int frameCount; TYPE_2__ viewParms; int frameSceneNum; } ;


 int R_DebugGraphics () ;
 int R_GenerateDrawSurfs () ;
 int R_RotateForViewer () ;
 int R_SetupFrustum () ;
 int R_SortDrawSurfs (scalar_t__,int) ;
 TYPE_3__ tr ;

void R_RenderView (viewParms_t *parms) {
 int firstDrawSurf;

 if ( parms->viewportWidth <= 0 || parms->viewportHeight <= 0 ) {
  return;
 }

 tr.viewCount++;

 tr.viewParms = *parms;
 tr.viewParms.frameSceneNum = tr.frameSceneNum;
 tr.viewParms.frameCount = tr.frameCount;

 firstDrawSurf = tr.refdef.numDrawSurfs;

 tr.viewCount++;


 R_RotateForViewer ();

 R_SetupFrustum ();

 R_GenerateDrawSurfs();

 R_SortDrawSurfs( tr.refdef.drawSurfs + firstDrawSurf, tr.refdef.numDrawSurfs - firstDrawSurf );


 R_DebugGraphics();
}
