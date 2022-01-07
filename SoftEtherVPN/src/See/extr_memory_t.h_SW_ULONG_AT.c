
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int uint32 ;



__inline uint32 SW_ULONG_AT(void *b, uint32 c)
{
 return ((uint32)*((uint8 *)b+c)<<24|
   (uint32)*((uint8 *)b+c+1)<<16|
   (uint32)*((uint8 *)b+c+2)<<8|
   (uint32)*((uint8 *)b+c+3)<<0);
}
