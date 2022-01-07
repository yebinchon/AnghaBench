
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_int ;


 int MIN (scalar_t__,int ) ;
 int PAGE_SIZE ;
 int read_erandom (int *,int) ;

void
read_frandom(void * buffer, u_int numBytes)
{
 uint8_t * buffer_bytes = buffer;
 int nbytes;






 while (numBytes) {
  nbytes = MIN(numBytes, PAGE_SIZE);
  read_erandom(buffer_bytes, nbytes);
  buffer_bytes += nbytes;
  numBytes -= nbytes;
 }
}
