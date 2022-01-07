
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
signed short ClampShort( int i ) {
 if ( i < -32768 ) {
  return -32768;
 }
 if ( i > 0x7fff ) {
  return 0x7fff;
 }
 return i;
}
