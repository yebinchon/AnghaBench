
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lightmapNum; } ;
typedef TYPE_1__ dsurface_t ;


 int Error (char*) ;
 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int MAX_MAP_LIGHTING ;
 TYPE_1__* drawSurfaces ;
 int numDrawSurfaces ;
 int numLightBytes ;
 int qprintf (char*,...) ;

void CountLightmaps( void ) {
 int count;
 int i;
 dsurface_t *ds;

 qprintf ("--- CountLightmaps ---\n");
 count = 0;
 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {

  ds = &drawSurfaces[i];
  if ( ds->lightmapNum > count ) {
   count = ds->lightmapNum;
  }
 }

 count++;
 numLightBytes = count * LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT * 3;
 if ( numLightBytes > MAX_MAP_LIGHTING ) {
  Error("MAX_MAP_LIGHTING exceeded");
 }

 qprintf( "%5i drawSurfaces\n", numDrawSurfaces );
 qprintf( "%5i lightmaps\n", count );
}
