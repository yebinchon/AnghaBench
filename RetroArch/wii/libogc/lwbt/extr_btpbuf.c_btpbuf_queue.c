
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {struct pbuf* next; } ;


 int btpbuf_ref (struct pbuf*) ;

void btpbuf_queue(struct pbuf *p,struct pbuf *n)
{
 if(p==((void*)0) || n==((void*)0) || p==n) return;

 while(p->next!=((void*)0)) p = p->next;

 p->next = n;
 btpbuf_ref(n);
}
