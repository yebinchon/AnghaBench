
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int planenum; int * shaderInfo; } ;
typedef TYPE_1__ side_t ;
typedef int shaderInfo_t ;
struct TYPE_5__ {size_t numsides; TYPE_1__* sides; } ;


 int MapPlaneFromPoints (int ,int ,int ) ;
 TYPE_3__* buildBrush ;
 int memset (TYPE_1__*,int ,int) ;

void AddBrushSide( vec3_t v1, vec3_t v2, vec3_t v3, shaderInfo_t *terrainShader ) {
 side_t *side;
 int planenum;

 side = &buildBrush->sides[ buildBrush->numsides ];
 memset( side, 0, sizeof( *side ) );
 buildBrush->numsides++;

 side->shaderInfo = terrainShader;


 planenum = MapPlaneFromPoints( v1, v2, v3 );
 side->planenum = planenum;
}
