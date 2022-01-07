
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ __viGetSDA () ;
 int __viOpenI2C (int) ;
 int __viSetSCL (int) ;
 int __viSetSDA (int) ;
 int i2cIdentFlag ;
 int udelay (int) ;

__attribute__((used)) static u32 __sendSlaveAddress(u8 addr)
{
   u32 i;

   __viSetSDA(i2cIdentFlag^1);
   udelay(2);

   __viSetSCL(0);
   for(i=0;i<8;i++)
   {
      if (addr&0x80)
         __viSetSDA(i2cIdentFlag);
      else
         __viSetSDA(i2cIdentFlag^1);
      udelay(2);

      __viSetSCL(1);
      udelay(2);

      __viSetSCL(0);
      addr <<= 1;
   }

   __viOpenI2C(0);
   udelay(2);

   __viSetSCL(1);
   udelay(2);

   if ((i2cIdentFlag == 1) && __viGetSDA()!=0)
      return 0;

   __viSetSDA(i2cIdentFlag^1);
   __viOpenI2C(1);
   __viSetSCL(0);

   return 1;
}
