
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x; int y; int * shader; } ;
typedef TYPE_1__ terrainSurf_t ;
typedef int shaderInfo_t ;


 scalar_t__ GROW_SURFACES ;
 TYPE_1__* lastSurface ;
 int maxsurfaces ;
 int memset (TYPE_1__*,int ,int) ;
 int numsurfaces ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 TYPE_1__* surfaces ;

terrainSurf_t *SurfaceForShader( shaderInfo_t *shader, int x, int y ) {
 int i;

 if ( lastSurface && ( lastSurface->shader == shader ) && ( lastSurface->x == x ) && ( lastSurface->y == y ) ) {
  return lastSurface;
 }

 lastSurface = surfaces;
 for( i = 0; i < numsurfaces; i++, lastSurface++ ) {
  if ( ( lastSurface->shader == shader ) && ( lastSurface->x == x ) && ( lastSurface->y == y ) ) {
   return lastSurface;
  }
 }

 if ( numsurfaces >= maxsurfaces ) {
  maxsurfaces += GROW_SURFACES;
  surfaces = realloc( surfaces, maxsurfaces * sizeof( *surfaces ) );
  memset( surfaces + numsurfaces + 1, 0, ( maxsurfaces - numsurfaces - 1 ) * sizeof( *surfaces ) );
 }

 lastSurface= &surfaces[ numsurfaces++ ];
 lastSurface->shader = shader;
 lastSurface->x = x;
 lastSurface->y = y;

 return lastSurface;
}
