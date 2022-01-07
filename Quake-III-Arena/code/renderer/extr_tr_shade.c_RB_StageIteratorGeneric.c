
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * texcoords; int colors; } ;
struct TYPE_11__ {int numPasses; TYPE_2__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int numVertexes; int xyz; TYPE_1__ svars; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_10__ {scalar_t__ sort; int surfaceFlags; scalar_t__ polygonOffset; scalar_t__ fogPass; scalar_t__ multitextureEnv; int cullType; int name; } ;


 int GL_COLOR_ARRAY ;
 int GL_Cull (int ) ;
 int GL_FLOAT ;
 int GL_POLYGON_OFFSET_FILL ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_UNSIGNED_BYTE ;
 int GLimp_LogComment (char*) ;
 int ProjectDlightTexture () ;
 int RB_DeformTessGeometry () ;
 int RB_FogPass () ;
 int RB_IterateStagesGeneric (TYPE_3__*) ;
 scalar_t__ SS_OPAQUE ;
 int SURF_NODLIGHT ;
 int SURF_SKY ;
 int qfalse ;
 int qglColorPointer (int,int ,int ,int ) ;
 int qglDisable (int ) ;
 int qglDisableClientState (int ) ;
 int qglEnable (int ) ;
 int qglEnableClientState (int ) ;
 int qglLockArraysEXT (int ,int ) ;
 int qglPolygonOffset (int ,int ) ;
 int qglTexCoordPointer (int,int ,int ,int ) ;
 int qglUnlockArraysEXT () ;
 int qglVertexPointer (int,int ,int,int ) ;
 int qtrue ;
 TYPE_7__* r_logFile ;
 TYPE_6__* r_offsetFactor ;
 TYPE_5__* r_offsetUnits ;
 int setArraysOnce ;
 TYPE_3__ tess ;
 char* va (char*,int ) ;

void RB_StageIteratorGeneric( void )
{
 shaderCommands_t *input;

 input = &tess;

 RB_DeformTessGeometry();




 if ( r_logFile->integer )
 {


  GLimp_LogComment( va("--- RB_StageIteratorGeneric( %s ) ---\n", tess.shader->name) );
 }




 GL_Cull( input->shader->cullType );


 if ( input->shader->polygonOffset )
 {
  qglEnable( GL_POLYGON_OFFSET_FILL );
  qglPolygonOffset( r_offsetFactor->value, r_offsetUnits->value );
 }







 if ( tess.numPasses > 1 || input->shader->multitextureEnv )
 {
  setArraysOnce = qfalse;
  qglDisableClientState (GL_COLOR_ARRAY);
  qglDisableClientState (GL_TEXTURE_COORD_ARRAY);
 }
 else
 {
  setArraysOnce = qtrue;

  qglEnableClientState( GL_COLOR_ARRAY);
  qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );

  qglEnableClientState( GL_TEXTURE_COORD_ARRAY);
  qglTexCoordPointer( 2, GL_FLOAT, 0, tess.svars.texcoords[0] );
 }




 qglVertexPointer (3, GL_FLOAT, 16, input->xyz);
 if (qglLockArraysEXT)
 {
  qglLockArraysEXT(0, input->numVertexes);
  GLimp_LogComment( "glLockArraysEXT\n" );
 }




 if ( !setArraysOnce )
 {
  qglEnableClientState( GL_TEXTURE_COORD_ARRAY );
  qglEnableClientState( GL_COLOR_ARRAY );
 }




 RB_IterateStagesGeneric( input );




 if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE
  && !(tess.shader->surfaceFlags & (SURF_NODLIGHT | SURF_SKY) ) ) {
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




 if ( input->shader->polygonOffset )
 {
  qglDisable( GL_POLYGON_OFFSET_FILL );
 }
}
