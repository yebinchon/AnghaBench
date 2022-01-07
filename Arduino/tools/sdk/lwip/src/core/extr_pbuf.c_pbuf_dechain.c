
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct pbuf {scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; } ;


 int LWIP_ASSERT (char*,int) ;
 int LWIP_DBG_TRACE ;
 int LWIP_DEBUGF (int,char*) ;
 int PBUF_DEBUG ;
 scalar_t__ pbuf_free (struct pbuf*) ;

struct pbuf *
pbuf_dechain(struct pbuf *p)
{
  struct pbuf *q;
  u8_t tail_gone = 1;

  q = p->next;

  if (q != ((void*)0)) {

    LWIP_ASSERT("p->tot_len == p->len + q->tot_len", q->tot_len == p->tot_len - p->len);

    q->tot_len = p->tot_len - p->len;

    p->next = ((void*)0);

    p->tot_len = p->len;

    LWIP_DEBUGF(PBUF_DEBUG | LWIP_DBG_TRACE, ("pbuf_dechain: unreferencing %p\n", (void *)q));
    tail_gone = pbuf_free(q);
    if (tail_gone > 0) {
      LWIP_DEBUGF(PBUF_DEBUG | LWIP_DBG_TRACE,
                  ("pbuf_dechain: deallocated %p (as it is no longer referenced)\n", (void *)q));
    }

  }

  LWIP_ASSERT("p->tot_len == p->len", p->tot_len == p->len);
  return ((tail_gone > 0) ? ((void*)0) : q);
}
