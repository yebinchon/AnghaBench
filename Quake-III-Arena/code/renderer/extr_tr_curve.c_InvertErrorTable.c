
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int copy ;


 int Com_Memcpy (float**,float**,int) ;
 int MAX_GRID_SIZE ;

__attribute__((used)) static void InvertErrorTable( float errorTable[2][MAX_GRID_SIZE], int width, int height ) {
 int i;
 float copy[2][MAX_GRID_SIZE];

 Com_Memcpy( copy, errorTable, sizeof( copy ) );

 for ( i = 0 ; i < width ; i++ ) {
  errorTable[1][i] = copy[0][i];
 }

 for ( i = 0 ; i < height ; i++ ) {
  errorTable[0][i] = copy[1][height-1-i];
 }

}
