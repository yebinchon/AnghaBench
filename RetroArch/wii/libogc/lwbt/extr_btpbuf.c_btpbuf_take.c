
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {scalar_t__ flags; scalar_t__ len; struct pbuf* next; int tot_len; int payload; } ;


 int LOG (char*,...) ;
 scalar_t__ PBUF_FLAG_REF ;
 int PBUF_POOL ;
 scalar_t__ PBUF_POOL_BUFSIZE ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_free (struct pbuf*) ;
 int memcpy (int ,int ,scalar_t__) ;

struct pbuf* btpbuf_take(struct pbuf *p)
{
 struct pbuf *q , *prev, *head;

 prev = ((void*)0);
 head = p;

 do
 {

  if (p->flags == PBUF_FLAG_REF) {
   LOG("pbuf_take: encountered PBUF_REF %p\n", (void *)p);


   if (p->len <= PBUF_POOL_BUFSIZE) {
    q = btpbuf_alloc(PBUF_RAW, p->len, PBUF_POOL);
    if (q == ((void*)0)) {
     LOG("pbuf_take: Could not allocate PBUF_POOL\n");
    }
   } else {

    q = ((void*)0);
    LOG("pbuf_take: PBUF_POOL too small to replace PBUF_REF\n");
   }

   if (q == ((void*)0)) {
    q = btpbuf_alloc(PBUF_RAW, p->len, PBUF_RAM);
    if (q == ((void*)0)) {
     LOG("pbuf_take: Could not allocate PBUF_RAM\n");
    }
   }

   if (q != ((void*)0))
   {


    q->next = p->next;

    p->next = ((void*)0);

    if (prev != ((void*)0)) {

     prev->next = q;

    } else {
     head = q;
    }

    memcpy(q->payload, p->payload, p->len);
    q->tot_len = p->tot_len;
    q->len = p->len;







    btpbuf_free(p);

    LOG("pbuf_take: replaced PBUF_REF %p with %p\n", (void *)p, (void *)q);
    p = q;
   } else {

    btpbuf_free(head);
    LOG("pbuf_take: failed to allocate replacement pbuf for %p\n", (void *)p);
    return ((void*)0);
   }

  } else {
   LOG("pbuf_take: skipping pbuf not of type PBUF_REF\n");
  }

  prev = p;

  p = p->next;
 } while (p);
 LOG("pbuf_take: end of chain reached.\n");

 return head;
}
