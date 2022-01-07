
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_17__ {TYPE_10__* bundle; int stateBits; } ;
typedef TYPE_2__ shaderStage_t ;
struct TYPE_16__ {int * texcoords; int colors; } ;
struct TYPE_18__ {int indexes; int numIndexes; TYPE_1__ svars; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_24__ {scalar_t__ hardwareType; } ;
struct TYPE_23__ {scalar_t__ integer; } ;
struct TYPE_22__ {int integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {TYPE_2__** xstages; } ;
struct TYPE_19__ {int whiteImage; } ;
struct TYPE_15__ {scalar_t__* image; scalar_t__ vertexLightmap; scalar_t__ isLightmap; } ;


 int ComputeColors (TYPE_2__*) ;
 int ComputeTexCoords (TYPE_2__*) ;
 int DrawMultitextured (TYPE_3__*,int) ;
 scalar_t__ GLHW_PERMEDIA2 ;
 int GL_Bind (int ) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_State (int ) ;
 int GL_UNSIGNED_BYTE ;
 int MAX_SHADER_STAGES ;
 int R_BindAnimatedImage (TYPE_10__*) ;
 int R_DrawElements (int ,int ) ;
 TYPE_9__ glConfig ;
 int qglColorPointer (int,int ,int ,int ) ;
 int qglEnableClientState (int ) ;
 int qglTexCoordPointer (int,int ,int ,int ) ;
 TYPE_8__* r_lightmap ;
 TYPE_7__* r_uiFullScreen ;
 TYPE_6__* r_vertexLight ;
 int setArraysOnce ;
 TYPE_5__ tess ;
 TYPE_4__ tr ;

__attribute__((used)) static void RB_IterateStagesGeneric( shaderCommands_t *input )
{
 int stage;

 for ( stage = 0; stage < MAX_SHADER_STAGES; stage++ )
 {
  shaderStage_t *pStage = tess.xstages[stage];

  if ( !pStage )
  {
   break;
  }

  ComputeColors( pStage );
  ComputeTexCoords( pStage );

  if ( !setArraysOnce )
  {
   qglEnableClientState( GL_COLOR_ARRAY );
   qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, input->svars.colors );
  }




  if ( pStage->bundle[1].image[0] != 0 )
  {
   DrawMultitextured( input, stage );
  }
  else
  {
   if ( !setArraysOnce )
   {
    qglTexCoordPointer( 2, GL_FLOAT, 0, input->svars.texcoords[0] );
   }




   if ( pStage->bundle[0].vertexLightmap && ( (r_vertexLight->integer && !r_uiFullScreen->integer) || glConfig.hardwareType == GLHW_PERMEDIA2 ) && r_lightmap->integer )
   {
    GL_Bind( tr.whiteImage );
   }
   else
    R_BindAnimatedImage( &pStage->bundle[0] );

   GL_State( pStage->stateBits );




   R_DrawElements( input->numIndexes, input->indexes );
  }

  if ( r_lightmap->integer && ( pStage->bundle[0].isLightmap || pStage->bundle[1].isLightmap || pStage->bundle[0].vertexLightmap ) )
  {
   break;
  }
 }
}
