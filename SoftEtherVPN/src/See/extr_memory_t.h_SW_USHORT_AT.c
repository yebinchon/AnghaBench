
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int uint32 ;
typedef int uint16 ;



__inline uint16 SW_USHORT_AT(void *b, uint32 os)
{
 return ((uint16)
  ((uint16)*((uint8 *)b+os+0)<<8|
   (uint16)*((uint8 *)b+os+1)<<0));
}
