
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int numVertexes; int * normal; int * xyz; } ;
typedef TYPE_1__ shaderCommands_t ;
struct TYPE_5__ {int whiteImage; } ;


 int GLS_DEPTHMASK_TRUE ;
 int GLS_POLYMODE_LINE ;
 int GL_Bind (int ) ;
 int GL_LINES ;
 int GL_State (int) ;
 int VectorMA (int ,int,int ,int ) ;
 int qglBegin (int ) ;
 int qglColor3f (int,int,int) ;
 int qglDepthRange (int ,int) ;
 int qglEnd () ;
 int qglVertex3fv (int ) ;
 TYPE_2__ tr ;

__attribute__((used)) static void DrawNormals (shaderCommands_t *input) {
 int i;
 vec3_t temp;

 GL_Bind( tr.whiteImage );
 qglColor3f (1,1,1);
 qglDepthRange( 0, 0 );
 GL_State( GLS_POLYMODE_LINE | GLS_DEPTHMASK_TRUE );

 qglBegin (GL_LINES);
 for (i = 0 ; i < input->numVertexes ; i++) {
  qglVertex3fv (input->xyz[i]);
  VectorMA (input->xyz[i], 2, input->normal[i], temp);
  qglVertex3fv (temp);
 }
 qglEnd ();

 qglDepthRange( 0, 1 );
}
