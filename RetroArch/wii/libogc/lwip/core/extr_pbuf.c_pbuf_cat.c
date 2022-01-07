
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; } ;


 int LWIP_ASSERT (char*,int) ;

void
pbuf_cat(struct pbuf *h, struct pbuf *t)
{
  struct pbuf *p;

  LWIP_ASSERT("h != NULL (programmer violates API)", h != ((void*)0));
  LWIP_ASSERT("t != NULL (programmer violates API)", t != ((void*)0));
  if ((h == ((void*)0)) || (t == ((void*)0))) return;


  for (p = h; p->next != ((void*)0); p = p->next) {

    p->tot_len += t->tot_len;
  }

  LWIP_ASSERT("p->tot_len == p->len (of last pbuf in chain)", p->tot_len == p->len);
  LWIP_ASSERT("p->next == NULL", p->next == ((void*)0));

  p->tot_len += t->tot_len;

  p->next = t;



}
