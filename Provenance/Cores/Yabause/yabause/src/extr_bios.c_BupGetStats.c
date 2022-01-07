
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CheckHeader (int) ;
 int GetDeviceStats (int,int*,int*,int*) ;
 int GetFreeSpace (int,int,int,int) ;

int BupGetStats(u32 device, u32 *freespace, u32 *maxspace)
{
   u32 ret;
   u32 size;
   u32 addr;
   u32 blocksize;

   ret = GetDeviceStats(device, &size, &addr, &blocksize);


   if (ret == 1 || CheckHeader(device) != 0)
      return 0;

   *maxspace = size / blocksize;
   *freespace = GetFreeSpace(device, size, addr, blocksize);

   return 1;
}
