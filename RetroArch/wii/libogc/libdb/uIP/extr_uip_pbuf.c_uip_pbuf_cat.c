
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {struct uip_pbuf* next; scalar_t__ tot_len; } ;



void uip_pbuf_cat(struct uip_pbuf *h,struct uip_pbuf *t)
{
 struct uip_pbuf *p;

 if(h==((void*)0) || t==((void*)0)) return;

 for(p=h;p->next!=((void*)0);p=p->next) {
  p->tot_len += t->tot_len;
 }
 p->tot_len += t->tot_len;
 p->next = t;
}
