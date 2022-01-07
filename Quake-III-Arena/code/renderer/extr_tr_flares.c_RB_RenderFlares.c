
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_9__ {int addedFrame; scalar_t__ frameSceneNum; scalar_t__ inPortal; scalar_t__ drawIntensity; struct TYPE_9__* next; } ;
typedef TYPE_2__ flare_t ;
struct TYPE_8__ {int frameCount; scalar_t__ frameSceneNum; scalar_t__ isPortal; scalar_t__ viewportHeight; scalar_t__ viewportY; scalar_t__ viewportWidth; scalar_t__ viewportX; } ;
struct TYPE_11__ {TYPE_1__ viewParms; } ;
struct TYPE_10__ {int integer; } ;


 int GL_CLIP_PLANE0 ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int RB_RenderFlare (TYPE_2__*) ;
 int RB_TestFlare (TYPE_2__*) ;
 TYPE_5__ backEnd ;
 int qfalse ;
 int qglDisable (int ) ;
 int qglLoadIdentity () ;
 int qglMatrixMode (int ) ;
 int qglOrtho (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int qglPopMatrix () ;
 int qglPushMatrix () ;
 int qtrue ;
 TYPE_2__* r_activeFlares ;
 TYPE_3__* r_flares ;
 void* r_inactiveFlares ;

void RB_RenderFlares (void) {
 flare_t *f;
 flare_t **prev;
 qboolean draw;

 if ( !r_flares->integer ) {
  return;
 }




 draw = qfalse;
 prev = &r_activeFlares;
 while ( ( f = *prev ) != ((void*)0) ) {

  if ( f->addedFrame < backEnd.viewParms.frameCount - 1 ) {
   *prev = f->next;
   f->next = r_inactiveFlares;
   r_inactiveFlares = f;
   continue;
  }


  f->drawIntensity = 0;
  if ( f->frameSceneNum == backEnd.viewParms.frameSceneNum
   && f->inPortal == backEnd.viewParms.isPortal ) {
   RB_TestFlare( f );
   if ( f->drawIntensity ) {
    draw = qtrue;
   } else {

    *prev = f->next;
    f->next = r_inactiveFlares;
    r_inactiveFlares = f;
    continue;
   }
  }

  prev = &f->next;
 }

 if ( !draw ) {
  return;
 }

 if ( backEnd.viewParms.isPortal ) {
  qglDisable (GL_CLIP_PLANE0);
 }

 qglPushMatrix();
    qglLoadIdentity();
 qglMatrixMode( GL_PROJECTION );
 qglPushMatrix();
    qglLoadIdentity();
 qglOrtho( backEnd.viewParms.viewportX, backEnd.viewParms.viewportX + backEnd.viewParms.viewportWidth,
     backEnd.viewParms.viewportY, backEnd.viewParms.viewportY + backEnd.viewParms.viewportHeight,
     -99999, 99999 );

 for ( f = r_activeFlares ; f ; f = f->next ) {
  if ( f->frameSceneNum == backEnd.viewParms.frameSceneNum
   && f->inPortal == backEnd.viewParms.isPortal
   && f->drawIntensity ) {
   RB_RenderFlare( f );
  }
 }

 qglPopMatrix();
 qglMatrixMode( GL_MODELVIEW );
 qglPopMatrix();
}
