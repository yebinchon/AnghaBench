
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef int u16 ;
typedef size_t s32 ;


 int* _ioCrc16Table ;

__attribute__((used)) static u16 __make_crc16(void *buffer,u32 len)
{
 s32 i;
 u8 *ptr;
 u16 crc16;

 crc16 = 0;
 ptr = buffer;
 for(i=0;i<len;i++)
  crc16 = (crc16<<8)^_ioCrc16Table[((crc16>>8)^(u16)(ptr[i]))];

 return crc16;
}
