
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CheckHeader (int) ;
 int DeleteSave (int,int,int) ;
 int FindSave2 (int,char const*,int,int,int,int) ;
 int GetDeviceStats (int,int*,int*,int*) ;

int BupDeleteSave(u32 device, const char *savename)
{
   u32 ret;
   u32 size;
   u32 addr;
   u32 blocksize;
   u32 block;

   ret = GetDeviceStats(device, &size, &addr, &blocksize);


   if (ret == 1 || CheckHeader(device) != 0)
      return -1;


   if ((block = FindSave2(device, savename, 2, size, addr, blocksize)) != 0)
   {

      DeleteSave(addr, block, blocksize);
      return 0;
   }

   return -2;
}
