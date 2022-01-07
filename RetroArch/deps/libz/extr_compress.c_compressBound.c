
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;



uLong compressBound (uLong sourceLen)
{
   return sourceLen + (sourceLen >> 12) + (sourceLen >> 14) +
      (sourceLen >> 25) + 13;
}
