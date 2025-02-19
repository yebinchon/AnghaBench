
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int* payload; scalar_t__ flags; scalar_t__ len; int tot_len; } ;
typedef scalar_t__ s16_t ;


 scalar_t__ PBUF_FLAG_POOL ;
 scalar_t__ PBUF_FLAG_RAM ;
 scalar_t__ PBUF_FLAG_REF ;
 scalar_t__ PBUF_FLAG_ROM ;

u8_t btpbuf_header(struct pbuf *p,s16_t hdr_size_inc)
{
 void *payload;

 if(hdr_size_inc==0 || p==((void*)0)) return 0;

 payload = p->payload;
 if(p->flags==PBUF_FLAG_POOL || p->flags==PBUF_FLAG_RAM) {
  p->payload = (u8_t*)p->payload-hdr_size_inc;
  if((u8_t*)p->payload<(u8_t*)p+sizeof(struct pbuf)) {
   p->payload = payload;
   return 1;
  }
 } else if(p->flags==PBUF_FLAG_ROM || p->flags==PBUF_FLAG_REF) {
  if(hdr_size_inc<0 && hdr_size_inc-p->len<=0) p->payload = (u8_t*)p->payload-hdr_size_inc;
  else return 1;
 }
 p->tot_len += hdr_size_inc;
 p->len += hdr_size_inc;

 return 0;
}
