
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __VISendI2CData (int,int *,int) ;
 int memcpy (int *,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static void __VIWriteI2CRegisterBuf(u8 reg, int size, u8 *data)
{
   u8 buf[0x100];
   buf[0] = reg;
   memcpy(&buf[1], data, size);
   __VISendI2CData(0xe0,buf,size+1);
   udelay(2);
}
