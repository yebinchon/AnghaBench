
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ numbrushsides ;
 scalar_t__ numleafbrushes ;
 int numleafs ;
 scalar_t__ numleafsurfaces ;
 scalar_t__ nummodels ;
 scalar_t__ numnodes ;

void BeginBSPFile( void ) {


 nummodels = 0;
 numnodes = 0;
 numbrushsides = 0;
 numleafsurfaces = 0;
 numleafbrushes = 0;



 numleafs = 1;
}
