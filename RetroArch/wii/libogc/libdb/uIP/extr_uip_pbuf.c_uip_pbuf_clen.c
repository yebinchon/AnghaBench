
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct uip_pbuf {struct uip_pbuf* next; } ;



u8_t uip_pbuf_clen(struct uip_pbuf *p)
{
 u8_t len;

 len = 0;
 while(p!=((void*)0)) {
  len++;
  p = p->next;
 }
 return len;
}
