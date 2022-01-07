
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int glStateBits; } ;
struct TYPE_3__ {int string; } ;


 int GLS_DEPTHMASK_TRUE ;
 int GLS_DEPTHTEST_DISABLE ;
 int GL_BLEND ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_FILL ;
 int GL_FRONT ;
 int GL_FRONT_AND_BACK ;
 int GL_LEQUAL ;
 int GL_MODULATE ;
 int GL_SCISSOR_TEST ;
 int GL_SMOOTH ;
 int GL_SelectTexture (int) ;
 int GL_TEXTURE_2D ;
 int GL_TRUE ;
 int GL_TexEnv (int ) ;
 int GL_TextureMode (int ) ;
 int GL_VERTEX_ARRAY ;
 TYPE_2__ glState ;
 scalar_t__ qglActiveTextureARB ;
 int qglClearDepth (float) ;
 int qglColor4f (int,int,int,int) ;
 int qglCullFace (int ) ;
 int qglDepthFunc (int ) ;
 int qglDepthMask (int ) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglEnableClientState (int ) ;
 int qglPolygonMode (int ,int ) ;
 int qglShadeModel (int ) ;
 TYPE_1__* r_textureMode ;

void GL_SetDefaultState( void )
{
 qglClearDepth( 1.0f );

 qglCullFace(GL_FRONT);

 qglColor4f (1,1,1,1);



 if ( qglActiveTextureARB ) {
  GL_SelectTexture( 1 );
  GL_TextureMode( r_textureMode->string );
  GL_TexEnv( GL_MODULATE );
  qglDisable( GL_TEXTURE_2D );
  GL_SelectTexture( 0 );
 }

 qglEnable(GL_TEXTURE_2D);
 GL_TextureMode( r_textureMode->string );
 GL_TexEnv( GL_MODULATE );

 qglShadeModel( GL_SMOOTH );
 qglDepthFunc( GL_LEQUAL );



 qglEnableClientState (GL_VERTEX_ARRAY);




 glState.glStateBits = GLS_DEPTHTEST_DISABLE | GLS_DEPTHMASK_TRUE;

 qglPolygonMode (GL_FRONT_AND_BACK, GL_FILL);
 qglDepthMask( GL_TRUE );
 qglDisable( GL_DEPTH_TEST );
 qglEnable( GL_SCISSOR_TEST );
 qglDisable( GL_CULL_FACE );
 qglDisable( GL_BLEND );
}
