
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;


 int uip_chksum (void*,int ) ;

u16_t
uip_ipchksum(void *dataptr,u16_t len)
{
  return ~(uip_chksum(dataptr,len));
}
