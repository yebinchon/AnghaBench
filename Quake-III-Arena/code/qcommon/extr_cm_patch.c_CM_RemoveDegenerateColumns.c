
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int ** points; } ;
typedef TYPE_1__ cGrid_t ;


 int CM_ComparePoints (int ,int ) ;
 int VectorCopy (int ,int ) ;

__attribute__((used)) static void CM_RemoveDegenerateColumns( cGrid_t *grid ) {
 int i, j, k;

 for ( i = 0 ; i < grid->width - 1 ; i++ ) {
  for ( j = 0 ; j < grid->height ; j++ ) {
   if ( !CM_ComparePoints( grid->points[i][j], grid->points[i+1][j] ) ) {
    break;
   }
  }

  if ( j != grid->height ) {
   continue;
  }

  for ( j = 0 ; j < grid->height ; j++ ) {

   for ( k = i + 2 ; k < grid->width ; k++ ) {
    VectorCopy( grid->points[k][j], grid->points[k-1][j] );
   }
  }
  grid->width--;


  i--;
 }
}
