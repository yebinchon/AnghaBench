
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_2__ {int* mins; int* maxs; } ;


 int Error (char*) ;
 int MAX_MAP_LIGHTGRID ;
 int ceil (int) ;
 TYPE_1__* dmodels ;
 int floor (int) ;
 int* gridBounds ;
 int* gridMins ;
 int* gridSize ;
 int numGridPoints ;
 int qprintf (char*,int) ;

void SetupGrid( void ) {
 int i;
 vec3_t maxs;

 for ( i = 0 ; i < 3 ; i++ ) {
  gridMins[i] = gridSize[i] * ceil( dmodels[0].mins[i] / gridSize[i] );
  maxs[i] = gridSize[i] * floor( dmodels[0].maxs[i] / gridSize[i] );
  gridBounds[i] = (maxs[i] - gridMins[i])/gridSize[i] + 1;
 }

 numGridPoints = gridBounds[0] * gridBounds[1] * gridBounds[2];
 if (numGridPoints * 8 >= MAX_MAP_LIGHTGRID)
  Error("MAX_MAP_LIGHTGRID");
 qprintf( "%5i gridPoints\n", numGridPoints );
}
