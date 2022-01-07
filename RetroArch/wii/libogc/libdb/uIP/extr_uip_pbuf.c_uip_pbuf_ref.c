
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {int ref; } ;



void uip_pbuf_ref(struct uip_pbuf *p)
{
 if(p!=((void*)0)) {
  ++(p->ref);
 }
}
