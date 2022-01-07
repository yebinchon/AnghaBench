
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int * bundle; int stateBits; } ;
typedef TYPE_4__ shaderStage_t ;
struct TYPE_12__ {int * texcoords; } ;
struct TYPE_14__ {int indexes; int numIndexes; TYPE_3__ svars; } ;
typedef TYPE_5__ shaderCommands_t ;
struct TYPE_10__ {scalar_t__ isPortal; } ;
struct TYPE_17__ {TYPE_1__ viewParms; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {TYPE_2__* shader; TYPE_4__** xstages; } ;
struct TYPE_11__ {int multitextureEnv; } ;


 int GL_FILL ;
 int GL_FLOAT ;
 int GL_FRONT_AND_BACK ;
 int GL_REPLACE ;
 int GL_SelectTexture (int) ;
 int GL_State (int ) ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TexEnv (int ) ;
 int R_BindAnimatedImage (int *) ;
 int R_DrawElements (int ,int ) ;
 TYPE_8__ backEnd ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglEnableClientState (int ) ;
 int qglPolygonMode (int ,int ) ;
 int qglTexCoordPointer (int,int ,int ,int ) ;
 TYPE_7__* r_lightmap ;
 TYPE_6__ tess ;

__attribute__((used)) static void DrawMultitextured( shaderCommands_t *input, int stage ) {
 shaderStage_t *pStage;

 pStage = tess.xstages[stage];

 GL_State( pStage->stateBits );



 if ( backEnd.viewParms.isPortal ) {
  qglPolygonMode( GL_FRONT_AND_BACK, GL_FILL );
 }




 GL_SelectTexture( 0 );
 qglTexCoordPointer( 2, GL_FLOAT, 0, input->svars.texcoords[0] );
 R_BindAnimatedImage( &pStage->bundle[0] );




 GL_SelectTexture( 1 );
 qglEnable( GL_TEXTURE_2D );
 qglEnableClientState( GL_TEXTURE_COORD_ARRAY );

 if ( r_lightmap->integer ) {
  GL_TexEnv( GL_REPLACE );
 } else {
  GL_TexEnv( tess.shader->multitextureEnv );
 }

 qglTexCoordPointer( 2, GL_FLOAT, 0, input->svars.texcoords[1] );

 R_BindAnimatedImage( &pStage->bundle[1] );

 R_DrawElements( input->numIndexes, input->indexes );





 qglDisable( GL_TEXTURE_2D );

 GL_SelectTexture( 0 );
}
