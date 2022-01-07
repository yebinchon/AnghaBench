
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int currenttmu; } ;
struct TYPE_3__ {int (* Error ) (int ,char*,int) ;} ;


 int ERR_DROP ;
 int GL_TEXTURE0_ARB ;
 int GL_TEXTURE1_ARB ;
 int GLimp_LogComment (char*) ;
 TYPE_2__ glState ;
 int qglActiveTextureARB (int ) ;
 int qglClientActiveTextureARB (int ) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int) ;

void GL_SelectTexture( int unit )
{
 if ( glState.currenttmu == unit )
 {
  return;
 }

 if ( unit == 0 )
 {
  qglActiveTextureARB( GL_TEXTURE0_ARB );
  GLimp_LogComment( "glActiveTextureARB( GL_TEXTURE0_ARB )\n" );
  qglClientActiveTextureARB( GL_TEXTURE0_ARB );
  GLimp_LogComment( "glClientActiveTextureARB( GL_TEXTURE0_ARB )\n" );
 }
 else if ( unit == 1 )
 {
  qglActiveTextureARB( GL_TEXTURE1_ARB );
  GLimp_LogComment( "glActiveTextureARB( GL_TEXTURE1_ARB )\n" );
  qglClientActiveTextureARB( GL_TEXTURE1_ARB );
  GLimp_LogComment( "glClientActiveTextureARB( GL_TEXTURE1_ARB )\n" );
 } else {
  ri.Error( ERR_DROP, "GL_SelectTexture: unit = %i", unit );
 }

 glState.currenttmu = unit;
}
