
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct pbuf {scalar_t__ flags; scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; scalar_t__ payload; } ;
typedef scalar_t__ s16_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ PBUF_FLAG_POOL ;
 scalar_t__ PBUF_FLAG_RAM ;
 scalar_t__ PBUF_FLAG_REF ;
 scalar_t__ PBUF_FLAG_ROM ;
 int mem_realloc (struct pbuf*,scalar_t__) ;
 int pbuf_free (struct pbuf*) ;

void
pbuf_realloc(struct pbuf *p, u16_t new_len)
{
  struct pbuf *q;
  u16_t rem_len;
  s16_t grow;

  LWIP_ASSERT("pbuf_realloc: sane p->flags", p->flags == PBUF_FLAG_POOL ||
              p->flags == PBUF_FLAG_ROM ||
              p->flags == PBUF_FLAG_RAM ||
              p->flags == PBUF_FLAG_REF);


  if (new_len >= p->tot_len) {

    return;
  }



  grow = new_len - p->tot_len;


  rem_len = new_len;
  q = p;

  while (rem_len > q->len) {

    rem_len -= q->len;

    q->tot_len += grow;

    q = q->next;
  }





  if ((q->flags == PBUF_FLAG_RAM) && (rem_len != q->len)) {

    mem_realloc(q, (u8_t *)q->payload - (u8_t *)q + rem_len);
  }

  q->len = rem_len;
  q->tot_len = q->len;


  if (q->next != ((void*)0)) {

    pbuf_free(q->next);
  }

  q->next = ((void*)0);

}
