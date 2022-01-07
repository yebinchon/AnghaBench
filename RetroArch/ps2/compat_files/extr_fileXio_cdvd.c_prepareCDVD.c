
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int SCECdNODISC ;
 int SCECdPS2DVD ;
 int SCECdPSCD ;
 int SCECdUNKNOWN ;
 scalar_t__ cd_Timer () ;
 int ps2_cdDiscValid () ;
 int ps2_cdStop () ;
 int sceCdGetDiskType () ;

__attribute__((used)) static int prepareCDVD(void)
{
   u64 wait_start;
   int cdmode = sceCdGetDiskType();

   if (sceCdGetDiskType() <= SCECdUNKNOWN) {
      wait_start = cd_Timer();
      while ((cd_Timer() < wait_start + 500) && !ps2_cdDiscValid()) {
         if (cdmode == SCECdNODISC)
            return 0;
      }
      if (cdmode == SCECdNODISC)
         return 0;
      if ((cdmode < SCECdPSCD) || (cdmode > SCECdPS2DVD)) {
         ps2_cdStop();
         return 0;
      }
   }

   return 1;
}
