
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int traceWork_t ;
struct TYPE_7__ {int forceSunLight; int noVertexShadows; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_8__ {size_t shaderNum; scalar_t__ surfaceType; } ;
typedef TYPE_2__ dsurface_t ;
struct TYPE_9__ {int shader; } ;


 scalar_t__ MST_TRIANGLE_SOUP ;
 TYPE_1__* ShaderInfoForShader (int ) ;
 int VertexLighting (TYPE_2__*,int,int ,double,int *) ;
 TYPE_2__* drawSurfaces ;
 TYPE_3__* dshaders ;

void TriSoupLightingThread(int num) {
 dsurface_t *ds;
 traceWork_t tw;
 shaderInfo_t *si;

 ds = &drawSurfaces[num];
 si = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );


 if ( ds->surfaceType == MST_TRIANGLE_SOUP ) {
  VertexLighting( ds, !si->noVertexShadows, si->forceSunLight, 1.0, &tw );
 }
}
