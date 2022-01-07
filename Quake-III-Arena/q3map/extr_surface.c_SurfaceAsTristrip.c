
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numVerts; int numIndexes; scalar_t__ firstIndex; scalar_t__ firstVert; } ;
typedef TYPE_1__ dsurface_t ;


 int Error (char*) ;
 scalar_t__ IsTriangleDegenerate (scalar_t__,int,int,int) ;
 int MAX_INDICES ;
 scalar_t__ MAX_MAP_DRAW_INDEXES ;
 int SurfaceAsTriFan (TYPE_1__*) ;
 int c_fanSurfaces ;
 int c_stripSurfaces ;
 scalar_t__ drawIndexes ;
 scalar_t__ drawVerts ;
 int memcpy (scalar_t__,int*,int) ;
 scalar_t__ numDrawIndexes ;

__attribute__((used)) static void SurfaceAsTristrip( dsurface_t *ds ) {
 int i;
 int rotate;
 int numIndices;
 int ni;
 int a, b, c;
 int indices[MAX_INDICES];


 numIndices = ( ds->numVerts - 2 ) * 3;
 if ( numIndices > MAX_INDICES ) {
  Error( "MAX_INDICES exceeded for surface" );
 }



 for ( rotate = 0 ; rotate < ds->numVerts ; rotate++ ) {
  for ( ni = 0, i = 0 ; i < ds->numVerts - 2 - i ; i++ ) {
   a = ( ds->numVerts - 1 - i + rotate ) % ds->numVerts;
   b = ( i + rotate ) % ds->numVerts;
   c = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;

   if ( IsTriangleDegenerate( drawVerts + ds->firstVert, a, b, c ) ) {
    break;
   }
   indices[ni++] = a;
   indices[ni++] = b;
   indices[ni++] = c;

   if ( i + 1 != ds->numVerts - 1 - i ) {
    a = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;
    b = ( i + rotate ) % ds->numVerts;
    c = ( i + 1 + rotate ) % ds->numVerts;

    if ( IsTriangleDegenerate( drawVerts + ds->firstVert, a, b, c ) ) {
     break;
    }
    indices[ni++] = a;
    indices[ni++] = b;
    indices[ni++] = c;
   }
  }
  if ( ni == numIndices ) {
   break;
  }
 }



 if ( ni < numIndices ) {
  c_fanSurfaces++;
  SurfaceAsTriFan( ds );
  return;
 }


 c_stripSurfaces++;

 if ( numDrawIndexes + ni > MAX_MAP_DRAW_INDEXES ) {
  Error( "MAX_MAP_DRAW_INDEXES" );
 }
 ds->firstIndex = numDrawIndexes;
 ds->numIndexes = ni;

 memcpy( drawIndexes + numDrawIndexes, indices, ni * sizeof(int) );
 numDrawIndexes += ni;
}
