
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memb_init (int *) ;
 int uip_pool_pbufs ;
 int uip_rom_pbufs ;

void uip_pbuf_init()
{
 memb_init(&uip_pool_pbufs);
 memb_init(&uip_rom_pbufs);
}
