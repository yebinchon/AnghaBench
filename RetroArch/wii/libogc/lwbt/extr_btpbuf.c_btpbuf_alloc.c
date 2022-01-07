
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8_t ;
typedef int u16_t ;
struct pbuf {int tot_len; int len; int ref; void* flags; struct pbuf* next; int * payload; } ;
typedef int s32_t ;
typedef int pbuf_layer ;
typedef int pbuf_flag ;


 int ERROR (char*) ;
 int LL_HLEN ;
 void* MEM_ALIGN (void*) ;
 scalar_t__ MEM_ALIGN_SIZE (int) ;
 void* PBUF_FLAG_POOL ;
 void* PBUF_FLAG_RAM ;
 void* PBUF_FLAG_REF ;
 void* PBUF_FLAG_ROM ;


 int PBUF_POOL_BUFSIZE ;





 int TRANSPORT_HLEN ;
 struct pbuf* btmemb_alloc (int *) ;
 struct pbuf* btmemr_malloc (scalar_t__) ;
 int btpbuf_free (struct pbuf*) ;
 int pool_pbufs ;
 int rom_pbufs ;

struct pbuf* btpbuf_alloc(pbuf_layer layer,u16_t len,pbuf_flag flag)
{
 u16_t offset;
 s32_t rem_len;
 struct pbuf *p,*q,*r;

 offset = 0;
 switch(layer) {
  case 128:
   offset += TRANSPORT_HLEN;
  case 134:
   offset += LL_HLEN;
   break;
  case 131:
   break;
  default:
   ERROR("btpbuf_alloc: bad pbuf layer.\n");
   return ((void*)0);
 }

 switch(flag) {
  case 133:
   p = btmemb_alloc(&pool_pbufs);
   if(p==((void*)0)) {
    ERROR("btbtpbuf_alloc: couldn't allocate pbuf(p) from pool\n");
    return ((void*)0);
   }

   p->next = ((void*)0);
   p->payload = MEM_ALIGN((void*)((u8_t*)p+(sizeof(struct pbuf)+offset)));
   p->tot_len = len;
   p->len = (len>(PBUF_POOL_BUFSIZE-offset)?(PBUF_POOL_BUFSIZE-offset):len);
   p->flags = PBUF_FLAG_POOL;
   p->ref = 1;

   r = p;
   rem_len = len - p->len;
   while(rem_len>0) {
    q = btmemb_alloc(&pool_pbufs);
    if(q==((void*)0)) {
     ERROR("btpbuf_alloc: couldn't allocate pbuf(q) from pool\n");
     btpbuf_free(p);
     return ((void*)0);
    }

    q->next = ((void*)0);
    r->next = q;
    q->tot_len = rem_len;
    q->len = (rem_len>PBUF_POOL_BUFSIZE?PBUF_POOL_BUFSIZE:rem_len);
    q->payload = (void*)((u8_t*)q+sizeof(struct pbuf));
    q->flags = PBUF_FLAG_POOL;
    q->ref = 1;

    rem_len -= q->len;
    r = q;
   }
   break;
  case 132:
   p = btmemr_malloc(MEM_ALIGN_SIZE(sizeof(struct pbuf)+offset)+MEM_ALIGN_SIZE(len));
   if(p==((void*)0)) {
    ERROR("btpbuf_alloc: couldn't allocate pbuf from ram\n");
    return ((void*)0);
   }
   p->payload = MEM_ALIGN((u8_t*)p+sizeof(struct pbuf)+offset);
   p->len = p->tot_len = len;
   p->next = ((void*)0);
   p->flags = PBUF_FLAG_RAM;
   break;
  case 129:
  case 130:
   p = btmemb_alloc(&rom_pbufs);
   if(p==((void*)0)) {
    ERROR("btpbuf_alloc: couldn't allocate pbuf from rom/ref\n");
    return ((void*)0);
   }
   p->payload = ((void*)0);
   p->next = ((void*)0);
   p->len = p->tot_len = len;
   p->flags = (flag==129?PBUF_FLAG_ROM:PBUF_FLAG_REF);
   break;
  default:
   ERROR("btpbuf_alloc: bad flag value.\n");
   return ((void*)0);
 }

 p->ref = 1;
 return p;
}
