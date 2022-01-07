
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __VISendI2CData (int,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static void __VIWriteI2CRegister8(u8 reg, u8 data)
{
   u8 buf[2];
   buf[0] = reg;
   buf[1] = data;
   __VISendI2CData(0xe0,buf,2);
   udelay(2);
}
