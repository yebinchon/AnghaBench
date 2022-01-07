
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int uint32 ;
typedef int int16 ;



__inline int16 SW_SHORT_AT(void *b, uint32 os)
{
 return ((int16)
  ((int16)*((uint8 *)b+os+0)<<8|
   (int16)*((uint8 *)b+os+1)<<0));
}
