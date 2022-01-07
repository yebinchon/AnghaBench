
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {float* normal; } ;
struct TYPE_9__ {int numPoints; int numIndices; int* dlightBits; int ofsIndices; float** points; TYPE_2__ plane; } ;
typedef TYPE_3__ srfSurfaceFace_t ;
struct TYPE_11__ {size_t smpFrame; } ;
struct TYPE_10__ {int dlightBits; int numVertexes; unsigned int* indexes; int numIndexes; float*** texCoords; int* vertexDlightBits; int * vertexColors; int * xyz; int * normal; TYPE_1__* shader; } ;
struct TYPE_7__ {scalar_t__ needsNormal; } ;


 int RB_CHECKOVERFLOW (int,int) ;
 int VERTEXSIZE ;
 int VectorCopy (float*,int ) ;
 TYPE_5__ backEnd ;
 TYPE_4__ tess ;

void RB_SurfaceFace( srfSurfaceFace_t *surf ) {
 int i;
 unsigned *indices, *tessIndexes;
 float *v;
 float *normal;
 int ndx;
 int Bob;
 int numPoints;
 int dlightBits;

 RB_CHECKOVERFLOW( surf->numPoints, surf->numIndices );

 dlightBits = surf->dlightBits[backEnd.smpFrame];
 tess.dlightBits |= dlightBits;

 indices = ( unsigned * ) ( ( ( char * ) surf ) + surf->ofsIndices );

 Bob = tess.numVertexes;
 tessIndexes = tess.indexes + tess.numIndexes;
 for ( i = surf->numIndices-1 ; i >= 0 ; i-- ) {
  tessIndexes[i] = indices[i] + Bob;
 }

 tess.numIndexes += surf->numIndices;

 v = surf->points[0];

 ndx = tess.numVertexes;

 numPoints = surf->numPoints;

 if ( tess.shader->needsNormal ) {
  normal = surf->plane.normal;
  for ( i = 0, ndx = tess.numVertexes; i < numPoints; i++, ndx++ ) {
   VectorCopy( normal, tess.normal[ndx] );
  }
 }

 for ( i = 0, v = surf->points[0], ndx = tess.numVertexes; i < numPoints; i++, v += VERTEXSIZE, ndx++ ) {
  VectorCopy( v, tess.xyz[ndx]);
  tess.texCoords[ndx][0][0] = v[3];
  tess.texCoords[ndx][0][1] = v[4];
  tess.texCoords[ndx][1][0] = v[5];
  tess.texCoords[ndx][1][1] = v[6];
  * ( unsigned int * ) &tess.vertexColors[ndx] = * ( unsigned int * ) &v[7];
  tess.vertexDlightBits[ndx] = dlightBits;
 }


 tess.numVertexes += surf->numPoints;
}
