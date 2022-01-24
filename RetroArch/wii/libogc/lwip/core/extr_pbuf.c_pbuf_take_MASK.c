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
struct pbuf {scalar_t__ flags; scalar_t__ len; struct pbuf* next; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PBUF_DEBUG ; 
 scalar_t__ PBUF_FLAG_REF ; 
 int /*<<< orphan*/  PBUF_POOL ; 
 scalar_t__ PBUF_POOL_BUFSIZE ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct pbuf* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*) ; 

struct pbuf *
FUNC5(struct pbuf *p)
{
  struct pbuf *q , *prev, *head;
  FUNC0("pbuf_take: p != NULL\n", p != NULL);
  FUNC1(PBUF_DEBUG | DBG_TRACE | 3, ("pbuf_take(%p)\n", (void*)p));

  prev = NULL;
  head = p;
  /* iterate through pbuf chain */
  do
  {
    /* pbuf is of type PBUF_REF? */
    if (p->flags == PBUF_FLAG_REF) {
      FUNC1(PBUF_DEBUG | DBG_TRACE, ("pbuf_take: encountered PBUF_REF %p\n", (void *)p));
      /* allocate a pbuf (w/ payload) fully in RAM */
      /* PBUF_POOL buffers are faster if we can use them */
      if (p->len <= PBUF_POOL_BUFSIZE) {
        q = FUNC3(PBUF_RAW, p->len, PBUF_POOL);
        if (q == NULL) {
          FUNC1(PBUF_DEBUG | DBG_TRACE | 2, ("pbuf_take: Could not allocate PBUF_POOL\n"));
        }
      } else {
        /* no replacement pbuf yet */
        q = NULL;
        FUNC1(PBUF_DEBUG | DBG_TRACE | 2, ("pbuf_take: PBUF_POOL too small to replace PBUF_REF\n"));
      }
      /* no (large enough) PBUF_POOL was available? retry with PBUF_RAM */
      if (q == NULL) {
        q = FUNC3(PBUF_RAW, p->len, PBUF_RAM);
        if (q == NULL) {
          FUNC1(PBUF_DEBUG | DBG_TRACE | 2, ("pbuf_take: Could not allocate PBUF_RAM\n"));
        }
      }
      /* replacement pbuf could be allocated? */
      if (q != NULL)
      {
        /* copy p to q */
        /* copy successor */
        q->next = p->next;
        /* remove linkage from original pbuf */
        p->next = NULL;
        /* remove linkage to original pbuf */
        if (prev != NULL) {
          /* prev->next == p at this point */
          FUNC0("prev->next == p", prev->next == p);
          /* break chain and insert new pbuf instead */
          prev->next = q;
        /* prev == NULL, so we replaced the head pbuf of the chain */
        } else {
          head = q;
        }
        /* copy pbuf payload */
        FUNC2(q->payload, p->payload, p->len);
        q->tot_len = p->tot_len;
        q->len = p->len;
        /* in case p was the first pbuf, it is no longer refered to by
         * our caller, as the caller MUST do p = pbuf_take(p);
         * in case p was not the first pbuf, it is no longer refered to
         * by prev. we can safely free the pbuf here.
         * (note that we have set p->next to NULL already so that
         * we will not free the rest of the chain by accident.)
         */
        FUNC4(p);
        /* do not copy ref, since someone else might be using the old buffer */
        FUNC1(PBUF_DEBUG, ("pbuf_take: replaced PBUF_REF %p with %p\n", (void )p, (void *)q));
        p = q;
      } else {
        /* deallocate chain */
        FUNC4(head);
        FUNC1(PBUF_DEBUG | 2, ("pbuf_take: failed to allocate replacement pbuf for %p\n", (void *)p));
        return NULL;
      }
    /* p->flags != PBUF_FLAG_REF */
    } else {
      FUNC1(PBUF_DEBUG | DBG_TRACE | 1, ("pbuf_take: skipping pbuf not of type PBUF_REF\n"));
    }
    /* remember this pbuf */
    prev = p;
    /* proceed to next pbuf in original chain */
    p = p->next;
  } while (p);
  FUNC1(PBUF_DEBUG | DBG_TRACE | 1, ("pbuf_take: end of chain reached.\n"));

  return head;
}