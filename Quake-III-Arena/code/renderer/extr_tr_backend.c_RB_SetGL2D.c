
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float time; float floatTime; } ;
struct TYPE_8__ {TYPE_1__ refdef; int projection2D; } ;
struct TYPE_7__ {int vidHeight; int vidWidth; } ;
struct TYPE_6__ {float (* Milliseconds ) () ;} ;


 int GLS_DEPTHTEST_DISABLE ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_CLIP_PLANE0 ;
 int GL_CULL_FACE ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_State (int) ;
 TYPE_4__ backEnd ;
 TYPE_3__ glConfig ;
 int qglDisable (int ) ;
 int qglLoadIdentity () ;
 int qglMatrixMode (int ) ;
 int qglOrtho (int ,int ,int ,int ,int ,int) ;
 int qglScissor (int ,int ,int ,int ) ;
 int qglViewport (int ,int ,int ,int ) ;
 int qtrue ;
 TYPE_2__ ri ;
 float stub1 () ;

void RB_SetGL2D (void) {
 backEnd.projection2D = qtrue;


 qglViewport( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
 qglScissor( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
 qglMatrixMode(GL_PROJECTION);
    qglLoadIdentity ();
 qglOrtho (0, glConfig.vidWidth, glConfig.vidHeight, 0, 0, 1);
 qglMatrixMode(GL_MODELVIEW);
    qglLoadIdentity ();

 GL_State( GLS_DEPTHTEST_DISABLE |
     GLS_SRCBLEND_SRC_ALPHA |
     GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

 qglDisable( GL_CULL_FACE );
 qglDisable( GL_CLIP_PLANE0 );


 backEnd.refdef.time = ri.Milliseconds();
 backEnd.refdef.floatTime = backEnd.refdef.time * 0.001f;
}
