
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcpseg {int p; } ;


 int UIP_MEMCPY (struct uip_tcpseg*,struct uip_tcpseg*,int) ;
 struct uip_tcpseg* memb_alloc (int *) ;
 int uip_pbuf_ref (int ) ;
 int uip_tcp_segs ;

struct uip_tcpseg* uip_tcpseg_copy(struct uip_tcpseg *seg)
{
 struct uip_tcpseg *cseg;

 cseg = memb_alloc(&uip_tcp_segs);
 if(cseg==((void*)0)) return ((void*)0);

 UIP_MEMCPY(cseg,seg,sizeof(struct uip_tcpseg));
 uip_pbuf_ref(cseg->p);

 return cseg;
}
