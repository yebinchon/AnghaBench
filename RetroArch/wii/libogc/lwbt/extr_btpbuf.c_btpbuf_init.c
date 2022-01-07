
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btmemb_init (int *) ;
 int pool_pbufs ;
 int rom_pbufs ;

void btpbuf_init()
{
 btmemb_init(&pool_pbufs);
 btmemb_init(&rom_pbufs);
}
