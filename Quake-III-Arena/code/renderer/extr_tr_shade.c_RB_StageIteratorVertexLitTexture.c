
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sort; scalar_t__ fogPass; int cullType; int name; } ;
typedef TYPE_3__ shader_t ;
struct TYPE_7__ {scalar_t__ colors; } ;
struct TYPE_10__ {TYPE_3__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int indexes; int numIndexes; TYPE_2__** xstages; int numVertexes; int xyz; int ** texCoords; TYPE_1__ svars; } ;
typedef TYPE_4__ shaderCommands_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_8__ {int stateBits; int * bundle; } ;


 int GL_COLOR_ARRAY ;
 int GL_Cull (int ) ;
 int GL_FLOAT ;
 int GL_State (int ) ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_UNSIGNED_BYTE ;
 int GLimp_LogComment (char*) ;
 int ProjectDlightTexture () ;
 int RB_CalcDiffuseColor (unsigned char*) ;
 int RB_FogPass () ;
 int R_BindAnimatedImage (int *) ;
 int R_DrawElements (int ,int ) ;
 scalar_t__ SS_OPAQUE ;
 int qglColorPointer (int,int ,int ,scalar_t__) ;
 int qglEnableClientState (int ) ;
 int qglLockArraysEXT (int ,int ) ;
 int qglTexCoordPointer (int,int ,int,int ) ;
 int qglUnlockArraysEXT () ;
 int qglVertexPointer (int,int ,int,int ) ;
 TYPE_6__* r_logFile ;
 TYPE_4__ tess ;
 char* va (char*,int ) ;

void RB_StageIteratorVertexLitTexture( void )
{
 shaderCommands_t *input;
 shader_t *shader;

 input = &tess;

 shader = input->shader;




 RB_CalcDiffuseColor( ( unsigned char * ) tess.svars.colors );




 if ( r_logFile->integer )
 {


  GLimp_LogComment( va("--- RB_StageIteratorVertexLitTexturedUnfogged( %s ) ---\n", tess.shader->name) );
 }




 GL_Cull( input->shader->cullType );




 qglEnableClientState( GL_COLOR_ARRAY);
 qglEnableClientState( GL_TEXTURE_COORD_ARRAY);

 qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );
 qglTexCoordPointer( 2, GL_FLOAT, 16, tess.texCoords[0][0] );
 qglVertexPointer (3, GL_FLOAT, 16, input->xyz);

 if ( qglLockArraysEXT )
 {
  qglLockArraysEXT(0, input->numVertexes);
  GLimp_LogComment( "glLockArraysEXT\n" );
 }




 R_BindAnimatedImage( &tess.xstages[0]->bundle[0] );
 GL_State( tess.xstages[0]->stateBits );
 R_DrawElements( input->numIndexes, input->indexes );




 if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE ) {
  ProjectDlightTexture();
 }




 if ( tess.fogNum && tess.shader->fogPass ) {
  RB_FogPass();
 }




 if (qglUnlockArraysEXT)
 {
  qglUnlockArraysEXT();
  GLimp_LogComment( "glUnlockArraysEXT\n" );
 }
}
