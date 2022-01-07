
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct pbuf {scalar_t__ len; scalar_t__ tot_len; struct pbuf* next; } ;


 scalar_t__ btpbuf_free (struct pbuf*) ;

struct pbuf* btpbuf_dechain(struct pbuf *p)
{
 struct pbuf *q;
 u8_t tail_gone = 1;

 q = p->next;
 if(q!=((void*)0)) {
  q->tot_len = p->tot_len - p->len;
  p->next = ((void*)0);
  p->tot_len = p->len;

  tail_gone = btpbuf_free(q);
 }

 return (tail_gone>0?((void*)0):q);
}
