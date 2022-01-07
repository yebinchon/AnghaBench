
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct uip_pbuf {scalar_t__ tot_len; scalar_t__ len; struct uip_pbuf* next; } ;


 scalar_t__ uip_pbuf_free (struct uip_pbuf*) ;

struct uip_pbuf* uip_pbuf_dequeue(struct uip_pbuf *p)
{
 struct uip_pbuf *q;
 u8_t tail_gone = 1;

 if(p==((void*)0)) return ((void*)0);

 while(p->tot_len!=p->len) p = p->next;

 q = p->next;
 if(q!=((void*)0)) {
  p->next = ((void*)0);
  tail_gone = uip_pbuf_free(q);
 }
 return (tail_gone>0?((void*)0):q);
}
