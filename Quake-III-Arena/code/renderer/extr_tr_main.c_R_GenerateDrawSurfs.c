
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_AddEntitySurfaces () ;
 int R_AddPolygonSurfaces () ;
 int R_AddWorldSurfaces () ;
 int R_SetupProjection () ;

void R_GenerateDrawSurfs( void ) {
 R_AddWorldSurfaces ();

 R_AddPolygonSurfaces();






 R_SetupProjection ();

 R_AddEntitySurfaces ();
}
