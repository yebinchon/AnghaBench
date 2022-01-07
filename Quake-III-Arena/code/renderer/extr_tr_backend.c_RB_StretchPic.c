
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t2; int s1; scalar_t__ h; scalar_t__ y; scalar_t__ x; int s2; scalar_t__ w; int t1; int * shader; } ;
typedef TYPE_1__ stretchPicCommand_t ;
typedef int shader_t ;
struct TYPE_6__ {scalar_t__ color2D; int entity2D; int * currentEntity; int projection2D; } ;
struct TYPE_5__ {int numIndexes; int numVertexes; int* indexes; int *** texCoords; scalar_t__** xyz; scalar_t__* vertexColors; int * shader; } ;


 int RB_BeginSurface (int *,int ) ;
 int RB_CHECKOVERFLOW (int,int) ;
 int RB_EndSurface () ;
 int RB_SetGL2D () ;
 TYPE_3__ backEnd ;
 TYPE_2__ tess ;

const void *RB_StretchPic ( const void *data ) {
 const stretchPicCommand_t *cmd;
 shader_t *shader;
 int numVerts, numIndexes;

 cmd = (const stretchPicCommand_t *)data;

 if ( !backEnd.projection2D ) {
  RB_SetGL2D();
 }

 shader = cmd->shader;
 if ( shader != tess.shader ) {
  if ( tess.numIndexes ) {
   RB_EndSurface();
  }
  backEnd.currentEntity = &backEnd.entity2D;
  RB_BeginSurface( shader, 0 );
 }

 RB_CHECKOVERFLOW( 4, 6 );
 numVerts = tess.numVertexes;
 numIndexes = tess.numIndexes;

 tess.numVertexes += 4;
 tess.numIndexes += 6;

 tess.indexes[ numIndexes ] = numVerts + 3;
 tess.indexes[ numIndexes + 1 ] = numVerts + 0;
 tess.indexes[ numIndexes + 2 ] = numVerts + 2;
 tess.indexes[ numIndexes + 3 ] = numVerts + 2;
 tess.indexes[ numIndexes + 4 ] = numVerts + 0;
 tess.indexes[ numIndexes + 5 ] = numVerts + 1;

 *(int *)tess.vertexColors[ numVerts ] =
  *(int *)tess.vertexColors[ numVerts + 1 ] =
  *(int *)tess.vertexColors[ numVerts + 2 ] =
  *(int *)tess.vertexColors[ numVerts + 3 ] = *(int *)backEnd.color2D;

 tess.xyz[ numVerts ][0] = cmd->x;
 tess.xyz[ numVerts ][1] = cmd->y;
 tess.xyz[ numVerts ][2] = 0;

 tess.texCoords[ numVerts ][0][0] = cmd->s1;
 tess.texCoords[ numVerts ][0][1] = cmd->t1;

 tess.xyz[ numVerts + 1 ][0] = cmd->x + cmd->w;
 tess.xyz[ numVerts + 1 ][1] = cmd->y;
 tess.xyz[ numVerts + 1 ][2] = 0;

 tess.texCoords[ numVerts + 1 ][0][0] = cmd->s2;
 tess.texCoords[ numVerts + 1 ][0][1] = cmd->t1;

 tess.xyz[ numVerts + 2 ][0] = cmd->x + cmd->w;
 tess.xyz[ numVerts + 2 ][1] = cmd->y + cmd->h;
 tess.xyz[ numVerts + 2 ][2] = 0;

 tess.texCoords[ numVerts + 2 ][0][0] = cmd->s2;
 tess.texCoords[ numVerts + 2 ][0][1] = cmd->t2;

 tess.xyz[ numVerts + 3 ][0] = cmd->x;
 tess.xyz[ numVerts + 3 ][1] = cmd->y + cmd->h;
 tess.xyz[ numVerts + 3 ][2] = 0;

 tess.texCoords[ numVerts + 3 ][0][0] = cmd->s1;
 tess.texCoords[ numVerts + 3 ][0][1] = cmd->t2;

 return (const void *)(cmd + 1);
}
