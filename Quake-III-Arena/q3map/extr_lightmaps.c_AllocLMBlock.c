
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int* allocated ;
 int qfalse ;
 int qtrue ;

qboolean AllocLMBlock (int w, int h, int *x, int *y)
{
 int i, j;
 int best, best2;

 best = LIGHTMAP_HEIGHT;

 for ( i=0 ; i <= LIGHTMAP_WIDTH-w ; i++ ) {
  best2 = 0;

  for (j=0 ; j<w ; j++) {
   if (allocated[i+j] >= best) {
    break;
   }
   if (allocated[i+j] > best2) {
    best2 = allocated[i+j];
   }
  }
  if (j == w) {
   *x = i;
   *y = best = best2;
  }
 }

 if (best + h > LIGHTMAP_HEIGHT) {
  return qfalse;
 }

 for (i=0 ; i<w ; i++) {
  allocated[*x + i] = best + h;
 }

 return qtrue;
}
