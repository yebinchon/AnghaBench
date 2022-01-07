
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indexes; int numIndexes; int numVertexes; int xyz; } ;
typedef TYPE_1__ shaderCommands_t ;
struct TYPE_5__ {int whiteImage; } ;


 int GLS_DEPTHMASK_TRUE ;
 int GLS_POLYMODE_LINE ;
 int GL_Bind (int ) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_State (int) ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GLimp_LogComment (char*) ;
 int R_DrawElements (int ,int ) ;
 int qglColor3f (int,int,int) ;
 int qglDepthRange (int ,int) ;
 int qglDisableClientState (int ) ;
 int qglLockArraysEXT (int ,int ) ;
 int qglUnlockArraysEXT () ;
 int qglVertexPointer (int,int ,int,int ) ;
 TYPE_2__ tr ;

__attribute__((used)) static void DrawTris (shaderCommands_t *input) {
 GL_Bind( tr.whiteImage );
 qglColor3f (1,1,1);

 GL_State( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );
 qglDepthRange( 0, 0 );

 qglDisableClientState (GL_COLOR_ARRAY);
 qglDisableClientState (GL_TEXTURE_COORD_ARRAY);

 qglVertexPointer (3, GL_FLOAT, 16, input->xyz);

 if (qglLockArraysEXT) {
  qglLockArraysEXT(0, input->numVertexes);
  GLimp_LogComment( "glLockArraysEXT\n" );
 }

 R_DrawElements( input->numIndexes, input->indexes );

 if (qglUnlockArraysEXT) {
  qglUnlockArraysEXT();
  GLimp_LogComment( "glUnlockArraysEXT\n" );
 }
 qglDepthRange( 0, 1 );
}
