
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct uip_tcpseg {int * p; } ;


 int memb_free (int *,struct uip_tcpseg*) ;
 int uip_pbuf_free (int *) ;
 int uip_tcp_segs ;

u8_t uip_tcpseg_free(struct uip_tcpseg *seg)
{
 u8_t cnt = 0;

 if(seg!=((void*)0)) {
  if(seg->p!=((void*)0)) {
   cnt = uip_pbuf_free(seg->p);
  }
  memb_free(&uip_tcp_segs,seg);
 }
 return cnt;
}
