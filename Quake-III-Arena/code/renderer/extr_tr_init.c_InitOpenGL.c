
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vidWidth; scalar_t__ maxTextureSize; int renderer_string; } ;
typedef scalar_t__ GLint ;


 int GL_MAX_TEXTURE_SIZE ;
 int GL_SetDefaultState () ;
 int GLimp_Init () ;
 int GfxInfo_f () ;
 int Q_strlwr (char*) ;
 int R_InitCommandBuffers () ;
 TYPE_1__ glConfig ;
 int qglGetIntegerv (int ,scalar_t__*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void InitOpenGL( void )
{
 char renderer_buffer[1024];
 if ( glConfig.vidWidth == 0 )
 {
  GLint temp;

  GLimp_Init();

  strcpy( renderer_buffer, glConfig.renderer_string );
  Q_strlwr( renderer_buffer );


  qglGetIntegerv( GL_MAX_TEXTURE_SIZE, &temp );
  glConfig.maxTextureSize = temp;


  if ( glConfig.maxTextureSize <= 0 )
  {
   glConfig.maxTextureSize = 0;
  }
 }


 R_InitCommandBuffers();


 GfxInfo_f();


 GL_SetDefaultState();
}
