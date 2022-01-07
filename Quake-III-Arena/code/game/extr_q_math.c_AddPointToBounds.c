
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;



void AddPointToBounds( const vec3_t v, vec3_t mins, vec3_t maxs ) {
 if ( v[0] < mins[0] ) {
  mins[0] = v[0];
 }
 if ( v[0] > maxs[0]) {
  maxs[0] = v[0];
 }

 if ( v[1] < mins[1] ) {
  mins[1] = v[1];
 }
 if ( v[1] > maxs[1]) {
  maxs[1] = v[1];
 }

 if ( v[2] < mins[2] ) {
  mins[2] = v[2];
 }
 if ( v[2] > maxs[2]) {
  maxs[2] = v[2];
 }
}
