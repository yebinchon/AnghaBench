
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


struct TYPE_10__ {int colorInt; } ;
typedef TYPE_4__ fog_t ;
struct TYPE_8__ {scalar_t__* texcoords; int * colors; } ;
struct TYPE_12__ {int fogNum; int numVertexes; int indexes; int numIndexes; TYPE_3__* shader; TYPE_2__ svars; } ;
struct TYPE_11__ {int fogImage; TYPE_1__* world; } ;
struct TYPE_9__ {scalar_t__ fogPass; } ;
struct TYPE_7__ {TYPE_4__* fogs; } ;


 scalar_t__ FP_EQUAL ;
 int GLS_DEPTHFUNC_EQUAL ;
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ;
 int GLS_SRCBLEND_SRC_ALPHA ;
 int GL_Bind (int ) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_State (int) ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_UNSIGNED_BYTE ;
 int RB_CalcFogTexCoords (float*) ;
 int R_DrawElements (int ,int ) ;
 int qglColorPointer (int,int ,int ,int *) ;
 int qglEnableClientState (int ) ;
 int qglTexCoordPointer (int,int ,int ,scalar_t__) ;
 TYPE_6__ tess ;
 TYPE_5__ tr ;

__attribute__((used)) static void RB_FogPass( void ) {
 fog_t *fog;
 int i;

 qglEnableClientState( GL_COLOR_ARRAY );
 qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );

 qglEnableClientState( GL_TEXTURE_COORD_ARRAY);
 qglTexCoordPointer( 2, GL_FLOAT, 0, tess.svars.texcoords[0] );

 fog = tr.world->fogs + tess.fogNum;

 for ( i = 0; i < tess.numVertexes; i++ ) {
  * ( int * )&tess.svars.colors[i] = fog->colorInt;
 }

 RB_CalcFogTexCoords( ( float * ) tess.svars.texcoords[0] );

 GL_Bind( tr.fogImage );

 if ( tess.shader->fogPass == FP_EQUAL ) {
  GL_State( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
 } else {
  GL_State( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );
 }

 R_DrawElements( tess.numIndexes, tess.indexes );
}
