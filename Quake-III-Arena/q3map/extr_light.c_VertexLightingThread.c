
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int traceWork_t ;
struct TYPE_7__ {int vertexScale; int forceSunLight; int vertexShadows; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_8__ {scalar_t__ surfaceType; int lightmapNum; size_t shaderNum; } ;
typedef TYPE_2__ dsurface_t ;
struct TYPE_9__ {int shader; } ;


 scalar_t__ MST_TRIANGLE_SOUP ;
 TYPE_1__* ShaderInfoForShader (int ) ;
 int VertexLighting (TYPE_2__*,int ,int ,int ,int *) ;
 TYPE_2__* drawSurfaces ;
 TYPE_3__* dshaders ;
 scalar_t__ novertexlighting ;

void VertexLightingThread(int num) {
 dsurface_t *ds;
 traceWork_t tw;
 shaderInfo_t *si;

 ds = &drawSurfaces[num];


 if ( ds->surfaceType == MST_TRIANGLE_SOUP ) {
  return;
 }

 if (novertexlighting)
  return;

 if ( ds->lightmapNum == -1 ) {
  return;
 }

 si = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );


 VertexLighting( ds, si->vertexShadows, si->forceSunLight, si->vertexScale, &tw );
}
