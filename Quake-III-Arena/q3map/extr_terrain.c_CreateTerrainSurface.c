
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int numIndexes; int numVerts; TYPE_1__* verts; int indexes; } ;
typedef TYPE_2__ terrainSurf_t ;
typedef int shaderInfo_t ;
struct TYPE_13__ {int lightmapNum; int fogNum; int numIndexes; int numVerts; TYPE_4__* verts; void* indexes; int * shaderInfo; int miscModel; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_14__ {int* color; int normal; int * st; int xyz; } ;
typedef TYPE_4__ drawVert_t ;
struct TYPE_15__ {int numVerts; TYPE_4__* verts; } ;
struct TYPE_11__ {int* color; int * st; int xyz; } ;


 TYPE_3__* AllocDrawSurf () ;
 scalar_t__ CompareVert (TYPE_4__*,TYPE_4__*,int ) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 void* malloc (int) ;
 int memcpy (void*,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int numsurfaces ;
 int qfalse ;
 int qtrue ;
 TYPE_5__* surfaces ;

void CreateTerrainSurface( terrainSurf_t *surf, shaderInfo_t *shader ) {
 int i, j, k;
 drawVert_t *out;
 drawVert_t *in;
 mapDrawSurface_t *newsurf;

 newsurf = AllocDrawSurf();

 newsurf->miscModel = qtrue;
 newsurf->shaderInfo = shader;
 newsurf->lightmapNum = -1;
 newsurf->fogNum = -1;
 newsurf->numIndexes = surf->numIndexes;
 newsurf->numVerts = surf->numVerts;


 newsurf->indexes = malloc( surf->numIndexes * sizeof( *newsurf->indexes ) );
 memcpy( newsurf->indexes, surf->indexes, surf->numIndexes * sizeof( *newsurf->indexes ) );


 newsurf->verts = malloc( surf->numVerts * sizeof( *newsurf->verts ) );
 memset( newsurf->verts, 0, surf->numVerts * sizeof( *newsurf->verts ) );


 out = newsurf->verts;
 for( i = 0; i < newsurf->numVerts; i++, out++ ) {
  VectorCopy( surf->verts[ i ].xyz, out->xyz );


  out->st[ 0 ] = surf->verts[ i ].st[ 0 ];
  out->st[ 1 ] = surf->verts[ i ].st[ 1 ];


  out->color[0] = 255;
  out->color[1] = 255;
  out->color[2] = 255;
  out->color[3] = surf->verts[ i ].color[ 3 ];


  VectorClear( out->normal );
  for( j = 0; j < numsurfaces; j++ ) {
   in = surfaces[ j ].verts;
   for( k = 0; k < surfaces[ j ].numVerts; k++, in++ ) {
    if ( CompareVert( out, in, qfalse ) ) {
     VectorAdd( out->normal, in->normal, out->normal );
    }
   }
  }

  VectorNormalize( out->normal, out->normal );
 }
}
