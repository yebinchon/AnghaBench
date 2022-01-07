
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef scalar_t__ u32_t ;
typedef int u16_t ;


 scalar_t__ htons (int) ;

__attribute__((used)) static u32_t
chksum(void *dataptr, u16_t len)
{
  u16_t *sdataptr = dataptr;
  u32_t acc;

  for(acc = 0; len > 1; len -= 2) {
    acc += *sdataptr++;
  }


  if (len == 1) {
    acc += htons((u16_t)(*(u8_t *)dataptr) << 8);
  }

  return acc;

}
