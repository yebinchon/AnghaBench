
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; } ;



struct pbuf* btpbuf_dequeue(struct pbuf *p)
{
 struct pbuf *q;

 if(p==((void*)0)) return ((void*)0);

 while(p->tot_len!=p->len) p = p->next;

 q = p->next;
 p->next = ((void*)0);

 return q;
}
