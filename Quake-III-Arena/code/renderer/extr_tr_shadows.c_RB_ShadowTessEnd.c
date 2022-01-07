
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {scalar_t__ isMirror; } ;
struct TYPE_12__ {TYPE_2__ viewParms; TYPE_1__* currentEntity; } ;
struct TYPE_11__ {int stencilBits; } ;
struct TYPE_10__ {int numVertexes; float** xyz; int numIndexes; int* indexes; } ;
struct TYPE_9__ {int whiteImage; } ;
struct TYPE_7__ {int lightDir; } ;


 int Com_Memset (int ,int ,int) ;
 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int ) ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_ONE ;
 int GL_ALWAYS ;
 int GL_BACK ;
 int GL_Bind (int ) ;
 int GL_CULL_FACE ;
 int GL_DECR ;
 int GL_FALSE ;
 int GL_FRONT ;
 int GL_INCR ;
 int GL_KEEP ;
 int GL_STENCIL_TEST ;
 int GL_State (int) ;
 int GL_TRUE ;
 int R_AddEdgeDef (int,int,int) ;
 int R_RenderShadowEdges () ;
 int SHADER_MAX_VERTEXES ;
 int VectorCopy (int ,int ) ;
 int VectorMA (float*,int,int ,float*) ;
 int VectorSubtract (float*,float*,int ) ;
 TYPE_6__ backEnd ;
 int* facing ;
 TYPE_5__ glConfig ;
 int numEdgeDefs ;
 int qglColor3f (float,float,float) ;
 int qglColorMask (int ,int ,int ,int ) ;
 int qglCullFace (int ) ;
 int qglEnable (int ) ;
 int qglStencilFunc (int ,int,int) ;
 int qglStencilOp (int ,int ,int ) ;
 TYPE_4__ tess ;
 TYPE_3__ tr ;

void RB_ShadowTessEnd( void ) {
 int i;
 int numTris;
 vec3_t lightDir;


 if ( tess.numVertexes >= SHADER_MAX_VERTEXES / 2 ) {
  return;
 }

 if ( glConfig.stencilBits < 4 ) {
  return;
 }

 VectorCopy( backEnd.currentEntity->lightDir, lightDir );


 for ( i = 0 ; i < tess.numVertexes ; i++ ) {
  VectorMA( tess.xyz[i], -512, lightDir, tess.xyz[i+tess.numVertexes] );
 }


 Com_Memset( numEdgeDefs, 0, 4 * tess.numVertexes );

 numTris = tess.numIndexes / 3;
 for ( i = 0 ; i < numTris ; i++ ) {
  int i1, i2, i3;
  vec3_t d1, d2, normal;
  float *v1, *v2, *v3;
  float d;

  i1 = tess.indexes[ i*3 + 0 ];
  i2 = tess.indexes[ i*3 + 1 ];
  i3 = tess.indexes[ i*3 + 2 ];

  v1 = tess.xyz[ i1 ];
  v2 = tess.xyz[ i2 ];
  v3 = tess.xyz[ i3 ];

  VectorSubtract( v2, v1, d1 );
  VectorSubtract( v3, v1, d2 );
  CrossProduct( d1, d2, normal );

  d = DotProduct( normal, lightDir );
  if ( d > 0 ) {
   facing[ i ] = 1;
  } else {
   facing[ i ] = 0;
  }


  R_AddEdgeDef( i1, i2, facing[ i ] );
  R_AddEdgeDef( i2, i3, facing[ i ] );
  R_AddEdgeDef( i3, i1, facing[ i ] );
 }



 GL_Bind( tr.whiteImage );
 qglEnable( GL_CULL_FACE );
 GL_State( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );
 qglColor3f( 0.2f, 0.2f, 0.2f );


 qglColorMask( GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE );

 qglEnable( GL_STENCIL_TEST );
 qglStencilFunc( GL_ALWAYS, 1, 255 );


 if ( backEnd.viewParms.isMirror ) {
  qglCullFace( GL_FRONT );
  qglStencilOp( GL_KEEP, GL_KEEP, GL_INCR );

  R_RenderShadowEdges();

  qglCullFace( GL_BACK );
  qglStencilOp( GL_KEEP, GL_KEEP, GL_DECR );

  R_RenderShadowEdges();
 } else {
  qglCullFace( GL_BACK );
  qglStencilOp( GL_KEEP, GL_KEEP, GL_INCR );

  R_RenderShadowEdges();

  qglCullFace( GL_FRONT );
  qglStencilOp( GL_KEEP, GL_KEEP, GL_DECR );

  R_RenderShadowEdges();
 }



 qglColorMask( GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE );
}
