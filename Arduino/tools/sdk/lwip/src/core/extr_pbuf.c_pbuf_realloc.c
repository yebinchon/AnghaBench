
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct pbuf {scalar_t__ type; scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; scalar_t__ payload; } ;
typedef int s32_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ PBUF_POOL ;
 scalar_t__ PBUF_RAM ;
 scalar_t__ PBUF_REF ;
 scalar_t__ PBUF_ROM ;
 scalar_t__ mem_trim (struct pbuf*,scalar_t__) ;
 int pbuf_free (struct pbuf*) ;

void
pbuf_realloc(struct pbuf *p, u16_t new_len)
{
  struct pbuf *q;
  u16_t rem_len;
  s32_t grow;

  LWIP_ASSERT("pbuf_realloc: p != NULL", p != ((void*)0));
  LWIP_ASSERT("pbuf_realloc: sane p->type", p->type == PBUF_POOL ||
              p->type == PBUF_ROM ||
              p->type == PBUF_RAM ||
              p->type == PBUF_REF);


  if (new_len >= p->tot_len) {

    return;
  }



  grow = new_len - p->tot_len;


  rem_len = new_len;
  q = p;

  while (rem_len > q->len) {

    rem_len -= q->len;

    LWIP_ASSERT("grow < max_u16_t", grow < 0xffff);
    q->tot_len += (u16_t)grow;

    q = q->next;
    LWIP_ASSERT("pbuf_realloc: q != NULL", q != ((void*)0));
  }





  if ((q->type == PBUF_RAM) && (rem_len != q->len)) {

    q = (struct pbuf *)mem_trim(q, (u16_t)((u8_t *)q->payload - (u8_t *)q) + rem_len);
    LWIP_ASSERT("mem_trim returned q == NULL", q != ((void*)0));
  }

  q->len = rem_len;
  q->tot_len = q->len;


  if (q->next != ((void*)0)) {

    pbuf_free(q->next);
  }

  q->next = ((void*)0);

}
