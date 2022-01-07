
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsurfaceTest_t ;
struct TYPE_3__ {int lightmapNum; int lightmapHeight; int lightmapWidth; int lightmapY; int lightmapX; } ;
typedef TYPE_1__ dsurface_t ;
typedef int byte ;


 int ColorToBytes (float*,int *) ;
 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int VL_FixLightmapEdges () ;
 int VL_ShiftPatchLightmaps () ;
 int VectorAdd (float*,int ,float*) ;
 int _printf (char*) ;
 TYPE_1__* drawSurfaces ;
 int lightAmbientColor ;
 int * lightBytes ;
 float* lightFloats ;
 int ** lsurfaceTest ;
 int numDrawSurfaces ;

void VL_StoreLightmap(void)
{
 int i, x, y, k;
 dsurface_t *ds;
 lsurfaceTest_t *test;
 float *src;
 byte *dst;

 _printf("storing lightmaps...\n");

 VL_FixLightmapEdges();





 for ( i = 0 ; i < numDrawSurfaces ; i++ )
 {
  test = lsurfaceTest[ i ];
  if (!test)
   continue;
  ds = &drawSurfaces[ i ];

  if ( ds->lightmapNum < 0 )
   continue;

  for (y = 0; y < ds->lightmapHeight; y++)
  {
   for (x = 0; x < ds->lightmapWidth; x++)
   {
    k = ( ds->lightmapNum * LIGHTMAP_HEIGHT + ds->lightmapY + y)
      * LIGHTMAP_WIDTH + ds->lightmapX + x;
    VectorAdd((lightFloats + k*3), lightAmbientColor, (lightFloats + k*3));
    src = &lightFloats[k*3];
    dst = lightBytes + k*3;
    ColorToBytes(src, dst);
   }
  }
 }
}
