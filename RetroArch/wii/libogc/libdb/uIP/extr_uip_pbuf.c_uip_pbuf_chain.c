
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {int dummy; } ;


 int uip_pbuf_cat (struct uip_pbuf*,struct uip_pbuf*) ;
 int uip_pbuf_ref (struct uip_pbuf*) ;

void uip_pbuf_chain(struct uip_pbuf *h,struct uip_pbuf *t)
{
 uip_pbuf_cat(h,t);
 uip_pbuf_ref(t);
}
