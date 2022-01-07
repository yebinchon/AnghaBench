
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memmove( void *dest, const void *src, size_t count ) {
 int i;

 if ( dest > src ) {
  for ( i = count-1 ; i >= 0 ; i-- ) {
   ((char *)dest)[i] = ((char *)src)[i];
  }
 } else {
  for ( i = 0 ; i < count ; i++ ) {
   ((char *)dest)[i] = ((char *)src)[i];
  }
 }
 return dest;
}
