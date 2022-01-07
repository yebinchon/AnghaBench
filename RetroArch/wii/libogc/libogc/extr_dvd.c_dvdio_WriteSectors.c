
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sec_t ;



__attribute__((used)) static bool dvdio_WriteSectors(sec_t sector,sec_t numSectors,const void *buffer)
{
 return 1;
}
