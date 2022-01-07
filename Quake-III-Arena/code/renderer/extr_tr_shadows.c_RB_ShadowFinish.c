
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int stencilBits; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int whiteImage; } ;


 int GLS_DEPTHMASK_TRUE ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GL_Bind (int ) ;
 int GL_CLIP_PLANE0 ;
 int GL_CULL_FACE ;
 int GL_NOTEQUAL ;
 int GL_QUADS ;
 int GL_STENCIL_TEST ;
 int GL_State (int) ;
 TYPE_3__ glConfig ;
 int qglBegin (int ) ;
 int qglColor3f (float,float,float) ;
 int qglColor4f (int,int,int,int) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglEnd () ;
 int qglLoadIdentity () ;
 int qglStencilFunc (int ,int ,int) ;
 int qglVertex3f (int,int,int) ;
 TYPE_2__* r_shadows ;
 TYPE_1__ tr ;

void RB_ShadowFinish( void ) {
 if ( r_shadows->integer != 2 ) {
  return;
 }
 if ( glConfig.stencilBits < 4 ) {
  return;
 }
 qglEnable( GL_STENCIL_TEST );
 qglStencilFunc( GL_NOTEQUAL, 0, 255 );

 qglDisable (GL_CLIP_PLANE0);
 qglDisable (GL_CULL_FACE);

 GL_Bind( tr.whiteImage );

    qglLoadIdentity ();

 qglColor3f( 0.6f, 0.6f, 0.6f );
 GL_State( GLS_DEPTHMASK_TRUE | GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ZERO );




 qglBegin( GL_QUADS );
 qglVertex3f( -100, 100, -10 );
 qglVertex3f( 100, 100, -10 );
 qglVertex3f( 100, -100, -10 );
 qglVertex3f( -100, -100, -10 );
 qglEnd ();

 qglColor4f(1,1,1,1);
 qglDisable( GL_STENCIL_TEST );
}
