
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* dlightBits; int width; float* widthLodError; int height; float* heightLodError; TYPE_2__* verts; int lodRadius; int lodOrigin; } ;
typedef TYPE_1__ srfGridMesh_t ;
typedef scalar_t__ qboolean ;
struct TYPE_8__ {float* xyz; float* st; float* lightmap; float* normal; scalar_t__ color; } ;
typedef TYPE_2__ drawVert_t ;
struct TYPE_11__ {scalar_t__ needsNormal; } ;
struct TYPE_10__ {size_t smpFrame; } ;
struct TYPE_9__ {int dlightBits; int numVertexes; int numIndexes; float** xyz; float** normal; float*** texCoords; int* vertexDlightBits; int* indexes; TYPE_6__* shader; int * vertexColors; int fogNum; } ;


 float LodErrorForVolume (int ,int ) ;
 int MAX_GRID_SIZE ;
 int RB_BeginSurface (TYPE_6__*,int ) ;
 int RB_EndSurface () ;
 int SHADER_MAX_INDEXES ;
 int SHADER_MAX_VERTEXES ;
 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

void RB_SurfaceGrid( srfGridMesh_t *cv ) {
 int i, j;
 float *xyz;
 float *texCoords;
 float *normal;
 unsigned char *color;
 drawVert_t *dv;
 int rows, irows, vrows;
 int used;
 int widthTable[MAX_GRID_SIZE];
 int heightTable[MAX_GRID_SIZE];
 float lodError;
 int lodWidth, lodHeight;
 int numVertexes;
 int dlightBits;
 int *vDlightBits;
 qboolean needsNormal;

 dlightBits = cv->dlightBits[backEnd.smpFrame];
 tess.dlightBits |= dlightBits;


 lodError = LodErrorForVolume( cv->lodOrigin, cv->lodRadius );



 widthTable[0] = 0;
 lodWidth = 1;
 for ( i = 1 ; i < cv->width-1 ; i++ ) {
  if ( cv->widthLodError[i] <= lodError ) {
   widthTable[lodWidth] = i;
   lodWidth++;
  }
 }
 widthTable[lodWidth] = cv->width-1;
 lodWidth++;

 heightTable[0] = 0;
 lodHeight = 1;
 for ( i = 1 ; i < cv->height-1 ; i++ ) {
  if ( cv->heightLodError[i] <= lodError ) {
   heightTable[lodHeight] = i;
   lodHeight++;
  }
 }
 heightTable[lodHeight] = cv->height-1;
 lodHeight++;





 used = 0;
 rows = 0;
 while ( used < lodHeight - 1 ) {

  do {
   vrows = ( SHADER_MAX_VERTEXES - tess.numVertexes ) / lodWidth;
   irows = ( SHADER_MAX_INDEXES - tess.numIndexes ) / ( lodWidth * 6 );


   if ( vrows < 2 || irows < 1 ) {
    RB_EndSurface();
    RB_BeginSurface(tess.shader, tess.fogNum );
   } else {
    break;
   }
  } while ( 1 );

  rows = irows;
  if ( vrows < irows + 1 ) {
   rows = vrows - 1;
  }
  if ( used + rows > lodHeight ) {
   rows = lodHeight - used;
  }

  numVertexes = tess.numVertexes;

  xyz = tess.xyz[numVertexes];
  normal = tess.normal[numVertexes];
  texCoords = tess.texCoords[numVertexes][0];
  color = ( unsigned char * ) &tess.vertexColors[numVertexes];
  vDlightBits = &tess.vertexDlightBits[numVertexes];
  needsNormal = tess.shader->needsNormal;

  for ( i = 0 ; i < rows ; i++ ) {
   for ( j = 0 ; j < lodWidth ; j++ ) {
    dv = cv->verts + heightTable[ used + i ] * cv->width
     + widthTable[ j ];

    xyz[0] = dv->xyz[0];
    xyz[1] = dv->xyz[1];
    xyz[2] = dv->xyz[2];
    texCoords[0] = dv->st[0];
    texCoords[1] = dv->st[1];
    texCoords[2] = dv->lightmap[0];
    texCoords[3] = dv->lightmap[1];
    if ( needsNormal ) {
     normal[0] = dv->normal[0];
     normal[1] = dv->normal[1];
     normal[2] = dv->normal[2];
    }
    * ( unsigned int * ) color = * ( unsigned int * ) dv->color;
    *vDlightBits++ = dlightBits;
    xyz += 4;
    normal += 4;
    texCoords += 4;
    color += 4;
   }
  }



  {
   int numIndexes;
   int w, h;

   h = rows - 1;
   w = lodWidth - 1;
   numIndexes = tess.numIndexes;
   for (i = 0 ; i < h ; i++) {
    for (j = 0 ; j < w ; j++) {
     int v1, v2, v3, v4;


     v1 = numVertexes + i*lodWidth + j + 1;
     v2 = v1 - 1;
     v3 = v2 + lodWidth;
     v4 = v3 + 1;

     tess.indexes[numIndexes] = v2;
     tess.indexes[numIndexes+1] = v3;
     tess.indexes[numIndexes+2] = v1;

     tess.indexes[numIndexes+3] = v1;
     tess.indexes[numIndexes+4] = v3;
     tess.indexes[numIndexes+5] = v4;
     numIndexes += 6;
    }
   }

   tess.numIndexes = numIndexes;
  }

  tess.numVertexes += rows * lodWidth;

  used += rows - 1;
 }
}
