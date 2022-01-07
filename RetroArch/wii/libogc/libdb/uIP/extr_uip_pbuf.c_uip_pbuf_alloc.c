
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uip_pbuf_layer ;
typedef int uip_pbuf_flag ;
typedef void u8_t ;
typedef int u16_t ;
struct uip_pbuf {int tot_len; int len; int ref; void* flags; struct uip_pbuf* next; int * payload; } ;
typedef int s32_t ;


 void* MEM_ALIGN (void*) ;
 scalar_t__ MEM_ALIGN_SIZE (int) ;
 int UIP_ERROR (char*) ;
 int UIP_IP_HLEN ;
 int UIP_LL_HLEN ;
 void* UIP_PBUF_FLAG_POOL ;
 void* UIP_PBUF_FLAG_RAM ;
 void* UIP_PBUF_FLAG_REF ;
 void* UIP_PBUF_FLAG_ROM ;



 int UIP_PBUF_POOL_BUFSIZE ;





 int UIP_TRANSPORT_HLEN ;
 struct uip_pbuf* memb_alloc (int *) ;
 struct uip_pbuf* memr_malloc (scalar_t__) ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 int uip_pool_pbufs ;
 int uip_rom_pbufs ;

struct uip_pbuf* uip_pbuf_alloc(uip_pbuf_layer layer,u16_t len,uip_pbuf_flag flag)
{
 u16_t offset;
 s32_t rem_len;
 struct uip_pbuf *p,*q,*r;

 offset = 0;
 switch(layer) {
  case 128:
   offset += UIP_TRANSPORT_HLEN;
  case 135:
   offset += UIP_IP_HLEN;
  case 134:
   offset += UIP_LL_HLEN;
   break;
  case 131:
   break;
  default:
   UIP_ERROR("uip_pbuf_alloc: bad pbuf layer.\n");
   return ((void*)0);
 }

 switch(flag) {
  case 133:
   p = memb_alloc(&uip_pool_pbufs);
   if(p==((void*)0)) {
    UIP_ERROR("uip_pbuf_alloc: couldn't allocate pbuf(p) from pool\n");
    return ((void*)0);
   }

   p->next = ((void*)0);
   p->payload = MEM_ALIGN((void*)((u8_t*)p+(sizeof(struct uip_pbuf)+offset)));
   p->tot_len = len;
   p->len = (len>(UIP_PBUF_POOL_BUFSIZE-offset)?(UIP_PBUF_POOL_BUFSIZE-offset):len);
   p->flags = UIP_PBUF_FLAG_POOL;
   p->ref = 1;

   r = p;
   rem_len = len - p->len;
   while(rem_len>0) {
    q = memb_alloc(&uip_pool_pbufs);
    if(q==((void*)0)) {
     UIP_ERROR("uip_pbuf_alloc: couldn't allocate pbuf(q) from pool\n");
     uip_pbuf_free(p);
     return ((void*)0);
    }

    q->next = ((void*)0);
    r->next = q;
    q->tot_len = rem_len;
    q->len = (rem_len>UIP_PBUF_POOL_BUFSIZE?UIP_PBUF_POOL_BUFSIZE:rem_len);
    q->payload = (void*)((u8_t*)q+sizeof(struct uip_pbuf));
    q->flags = UIP_PBUF_FLAG_POOL;
    q->ref = 1;

    rem_len -= q->len;
    r = q;
   }
   break;
  case 132:
   p = memr_malloc(MEM_ALIGN_SIZE(sizeof(struct uip_pbuf)+offset)+MEM_ALIGN_SIZE(len));
   if(p==((void*)0)) {
    UIP_ERROR("uip_pbuf_alloc: couldn't allocate pbuf from ram\n");
    return ((void*)0);
   }
   p->payload = MEM_ALIGN((u8_t*)p+sizeof(struct uip_pbuf)+offset);
   p->len = p->tot_len = len;
   p->next = ((void*)0);
   p->flags = UIP_PBUF_FLAG_RAM;
   break;
  case 129:
  case 130:
   p = memb_alloc(&uip_rom_pbufs);
   if(p==((void*)0)) {
    UIP_ERROR("uip_pbuf_alloc: couldn't allocate pbuf from rom/ref\n");
    return ((void*)0);
   }
   p->payload = ((void*)0);
   p->next = ((void*)0);
   p->len = p->tot_len = len;
   p->flags = (flag==129?UIP_PBUF_FLAG_ROM:UIP_PBUF_FLAG_REF);
   break;
  default:
   UIP_ERROR("uip_pbuf_alloc: bad flag value.\n");
   return ((void*)0);
 }

 p->ref = 1;
 return p;
}
