
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;



void SnapVectorTowards( vec3_t v, vec3_t to ) {
 int i;

 for ( i = 0 ; i < 3 ; i++ ) {
  if ( to[i] <= v[i] ) {
   v[i] = (int)v[i];
  } else {
   v[i] = (int)v[i] + 1;
  }
 }
}
