
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct uip_pbuf {scalar_t__ ref; scalar_t__ flags; struct uip_pbuf* next; } ;


 scalar_t__ UIP_PBUF_FLAG_POOL ;
 scalar_t__ UIP_PBUF_FLAG_REF ;
 scalar_t__ UIP_PBUF_FLAG_ROM ;
 int memb_free (int *,struct uip_pbuf*) ;
 int memr_free (struct uip_pbuf*) ;
 int uip_pool_pbufs ;
 int uip_rom_pbufs ;

u8_t uip_pbuf_free(struct uip_pbuf *p)
{
 u8_t cnt;
 struct uip_pbuf *q;

 if(p==((void*)0)) return 0;

 cnt = 0;
 while(p!=((void*)0)) {
  p->ref--;
  if(p->ref==0) {
   q = p->next;
   if(p->flags==UIP_PBUF_FLAG_POOL) {
    memb_free(&uip_pool_pbufs,p);
   } else if(p->flags==UIP_PBUF_FLAG_ROM || p->flags==UIP_PBUF_FLAG_REF) {
    memb_free(&uip_rom_pbufs,p);
   } else {
    memr_free(p);
   }
   cnt++;
   p = q;
  } else
   p = ((void*)0);
 }
 return cnt;
}
