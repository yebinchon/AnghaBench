
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {struct pbuf* next; scalar_t__ tot_len; } ;



void btpbuf_cat(struct pbuf *h,struct pbuf *t)
{
 struct pbuf *p;

 if(h==((void*)0) || t==((void*)0)) return;

 for(p=h;p->next!=((void*)0);p=p->next) {
  p->tot_len += t->tot_len;
 }
 p->tot_len += t->tot_len;
 p->next = t;
}
