
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {struct uip_pbuf* next; } ;


 int uip_pbuf_ref (struct uip_pbuf*) ;

void uip_pbuf_queue(struct uip_pbuf *p,struct uip_pbuf *n)
{
 if(p==((void*)0) || n==((void*)0) || p==n) return;

 while(p->next!=((void*)0)) p = p->next;

 p->next = n;
 uip_pbuf_ref(n);
}
