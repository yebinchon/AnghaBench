
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
signed char ClampChar( int i ) {
 if ( i < -128 ) {
  return -128;
 }
 if ( i > 127 ) {
  return 127;
 }
 return i;
}
