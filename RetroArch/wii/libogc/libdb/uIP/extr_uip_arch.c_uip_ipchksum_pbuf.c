
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int u16_t ;
struct uip_pbuf {int len; int payload; struct uip_pbuf* next; } ;


 scalar_t__ uip_chksum (int ,int ) ;

u16_t uip_ipchksum_pbuf(struct uip_pbuf *p)
{
  u32_t acc;
  struct uip_pbuf *q;

  acc = 0;
  for(q = p; q != ((void*)0); q = q->next) {
 acc += uip_chksum(q->payload,q->len);
  }
  while(acc>>16) acc = (acc&0xffffUL)+(acc>>16);

  return (u16_t)~(acc & 0xffffUL);
}
