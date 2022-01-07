
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 scalar_t__ htons (int ) ;

u16_t uip_chksum(u16_t *sdata, u32_t len)
{
  u32_t acc;

  for(acc = 0;len > 1;len -= 2) {
    acc += *sdata++;
  }


  if(len==1) {
    acc += htons((u16_t)((((u8_t *)sdata)[0]&0xff)<<8));
  }
  while(acc>>16) acc = (acc&0xffffUL)+(acc>>16);

  return (u16_t)acc;
}
