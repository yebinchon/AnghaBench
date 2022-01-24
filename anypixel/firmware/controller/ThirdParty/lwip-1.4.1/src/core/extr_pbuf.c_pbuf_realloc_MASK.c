#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u16_t ;
struct pbuf {scalar_t__ type; scalar_t__ tot_len; scalar_t__ len; struct pbuf* next; scalar_t__ payload; } ;
typedef  int s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ PBUF_POOL ; 
 scalar_t__ PBUF_RAM ; 
 scalar_t__ PBUF_REF ; 
 scalar_t__ PBUF_ROM ; 
 scalar_t__ FUNC1 (struct pbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 

void
FUNC3(struct pbuf *p, u16_t new_len)
{
  struct pbuf *q;
  u16_t rem_len; /* remaining length */
  s32_t grow;

  FUNC0("pbuf_realloc: p != NULL", p != NULL);
  FUNC0("pbuf_realloc: sane p->type", p->type == PBUF_POOL ||
              p->type == PBUF_ROM ||
              p->type == PBUF_RAM ||
              p->type == PBUF_REF);

  /* desired length larger than current length? */
  if (new_len >= p->tot_len) {
    /* enlarging not yet supported */
    return;
  }

  /* the pbuf chain grows by (new_len - p->tot_len) bytes
   * (which may be negative in case of shrinking) */
  grow = new_len - p->tot_len;

  /* first, step over any pbufs that should remain in the chain */
  rem_len = new_len;
  q = p;
  /* should this pbuf be kept? */
  while (rem_len > q->len) {
    /* decrease remaining length by pbuf length */
    rem_len -= q->len;
    /* decrease total length indicator */
    FUNC0("grow < max_u16_t", grow < 0xffff);
    q->tot_len += (u16_t)grow;
    /* proceed to next pbuf in chain */
    q = q->next;
    FUNC0("pbuf_realloc: q != NULL", q != NULL);
  }
  /* we have now reached the new last pbuf (in q) */
  /* rem_len == desired length for pbuf q */

  /* shrink allocated memory for PBUF_RAM */
  /* (other types merely adjust their length fields */
  if ((q->type == PBUF_RAM) && (rem_len != q->len)) {
    /* reallocate and adjust the length of the pbuf that will be split */
    q = (struct pbuf *)FUNC1(q, (u16_t)((u8_t *)q->payload - (u8_t *)q) + rem_len);
    FUNC0("mem_trim returned q == NULL", q != NULL);
  }
  /* adjust length fields for new last pbuf */
  q->len = rem_len;
  q->tot_len = q->len;

  /* any remaining pbufs in chain? */
  if (q->next != NULL) {
    /* free remaining pbufs in chain */
    FUNC2(q->next);
  }
  /* q is last packet in chain */
  q->next = NULL;

}