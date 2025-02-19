
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_12__ {int width; int height; TYPE_4__* verts; } ;
struct TYPE_8__ {int shaderInfo; TYPE_7__ mesh; void* grouped; struct TYPE_8__* next; } ;
typedef TYPE_1__ parseMesh_t ;
struct TYPE_9__ {int * lightmapVecs; int shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
typedef int grouped ;
struct TYPE_10__ {TYPE_1__* patches; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_11__ {scalar_t__* xyz; } ;
typedef TYPE_4__ drawVert_t ;
typedef int byte ;


 int AddPointToBounds (scalar_t__*,int ,int ) ;
 int ClearBounds (int ,int ) ;
 TYPE_2__* DrawSurfaceForMesh (TYPE_7__*) ;
 int GrowGroup_r (int,int,int*,int*) ;
 int MAX_MAP_DRAW_SURFS ;
 int VectorCopy (int ,int ) ;
 double fabs (scalar_t__) ;
 int* malloc (int) ;
 int memset (int*,int ,int) ;
 int qprintf (char*,...) ;
 void* qtrue ;

void PatchMapDrawSurfs( entity_t *e ) {
 parseMesh_t *pm;
 parseMesh_t *check, *scan;
 mapDrawSurface_t *ds;
 int patchCount, groupCount;
 int i, j, k, l, c1, c2;
 drawVert_t *v1, *v2;
 vec3_t bounds[2];
 byte *bordering;
 parseMesh_t *meshes[MAX_MAP_DRAW_SURFS];
 qboolean grouped[MAX_MAP_DRAW_SURFS];
 byte group[MAX_MAP_DRAW_SURFS];

 qprintf( "----- PatchMapDrawSurfs -----\n" );

 patchCount = 0;
 for ( pm = e->patches ; pm ; pm = pm->next ) {
  meshes[patchCount] = pm;
  patchCount++;
 }

 if ( !patchCount ) {
  return;
 }
 bordering = malloc( patchCount * patchCount );
 memset( bordering, 0, patchCount * patchCount );


 for ( k = 0 ; k < patchCount ; k++ ) {
  bordering[k*patchCount+k] = 1;

  for ( l = k+1 ; l < patchCount ; l++ ) {
   check = meshes[k];
   scan = meshes[l];
   c1 = scan->mesh.width * scan->mesh.height;
   v1 = scan->mesh.verts;

   for ( i = 0 ; i < c1 ; i++, v1++ ) {
    c2 = check->mesh.width * check->mesh.height;
    v2 = check->mesh.verts;
    for ( j = 0 ; j < c2 ; j++, v2++ ) {
     if ( fabs( v1->xyz[0] - v2->xyz[0] ) < 1.0
      && fabs( v1->xyz[1] - v2->xyz[1] ) < 1.0
      && fabs( v1->xyz[2] - v2->xyz[2] ) < 1.0 ) {
      break;
     }
    }
    if ( j != c2 ) {
     break;
    }
   }
   if ( i != c1 ) {

    bordering[k*patchCount+l] =
    bordering[l*patchCount+k] = 1;
   } else {

    bordering[k*patchCount+l] =
    bordering[l*patchCount+k] = 0;
   }

  }
 }


 memset( grouped, 0, sizeof(grouped) );
 groupCount = 0;
 for ( i = 0 ; i < patchCount ; i++ ) {
  if ( !grouped[i] ) {
   groupCount++;
  }


  memset( group, 0, patchCount );
  GrowGroup_r( i, patchCount, bordering, group );


  ClearBounds( bounds[0], bounds[1] );
  for ( j = 0 ; j < patchCount ; j++ ) {
   if ( group[j] ) {
    grouped[j] = qtrue;
    scan = meshes[j];
    c1 = scan->mesh.width * scan->mesh.height;
    v1 = scan->mesh.verts;
    for ( k = 0 ; k < c1 ; k++, v1++ ) {
     AddPointToBounds( v1->xyz, bounds[0], bounds[1] );
    }
   }
  }


  scan = meshes[i];
  scan->grouped = qtrue;
  ds = DrawSurfaceForMesh( &scan->mesh );
  ds->shaderInfo = scan->shaderInfo;
  VectorCopy( bounds[0], ds->lightmapVecs[0] );
  VectorCopy( bounds[1], ds->lightmapVecs[1] );
 }

 qprintf( "%5i patches\n", patchCount );
 qprintf( "%5i patch LOD groups\n", groupCount );
}
