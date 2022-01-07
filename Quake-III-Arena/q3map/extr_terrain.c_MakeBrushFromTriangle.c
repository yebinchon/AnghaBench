
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int shaderInfo_t ;
typedef int bspbrush_t ;
struct TYPE_4__ {int* portalareas; int contents; int brushnum; scalar_t__ entitynum; int detail; scalar_t__ numsides; } ;


 int AddBrushSide (int *,int *,int *,int *) ;
 int CONTENTS_DETAIL ;
 int * FinishBrush () ;
 scalar_t__ MIN_WORLD_COORD ;
 int RemoveDuplicateBrushPlanes (TYPE_1__*) ;
 int SetBrushContents (TYPE_1__*) ;
 int VectorSet (int *,int ,int ,scalar_t__) ;
 TYPE_1__* buildBrush ;
 int entitySourceBrushes ;
 scalar_t__ num_entities ;
 int qfalse ;

void MakeBrushFromTriangle( vec3_t v1, vec3_t v2, vec3_t v3, shaderInfo_t *terrainShader ) {
 bspbrush_t *b;
 vec3_t d1;
 vec3_t d2;
 vec3_t d3;

 VectorSet( d1, v1[ 0 ], v1[ 1 ], MIN_WORLD_COORD + 10 );
 VectorSet( d2, v2[ 0 ], v2[ 1 ], MIN_WORLD_COORD + 10 );
 VectorSet( d3, v3[ 0 ], v3[ 1 ], MIN_WORLD_COORD + 10 );

 buildBrush->numsides = 0;
 buildBrush->detail = qfalse;

 AddBrushSide( v1, v2, v3, terrainShader );
 AddBrushSide( v1, d1, v2, terrainShader );
 AddBrushSide( v2, d2, v3, terrainShader );
 AddBrushSide( v3, d3, v1, terrainShader );
 AddBrushSide( d3, d2, d1, terrainShader );

 buildBrush->portalareas[0] = -1;
 buildBrush->portalareas[1] = -1;
 buildBrush->entitynum = num_entities-1;
 buildBrush->brushnum = entitySourceBrushes;


 if ( !RemoveDuplicateBrushPlanes( buildBrush ) ) {
  return;
 }


 SetBrushContents( buildBrush );
 buildBrush->contents |= CONTENTS_DETAIL;

 b = FinishBrush();
 if ( !b ) {
  return;
 }
}
