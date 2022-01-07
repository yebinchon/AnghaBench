
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mapDrawSurface_t ;


 int Error (char*) ;
 size_t MAX_MAP_DRAW_SURFS ;
 int * mapDrawSurfs ;
 size_t numMapDrawSurfs ;

mapDrawSurface_t *AllocDrawSurf( void ) {
 mapDrawSurface_t *ds;

 if ( numMapDrawSurfs >= MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS");
 }
 ds = &mapDrawSurfs[ numMapDrawSurfs ];
 numMapDrawSurfs++;

 return ds;
}
