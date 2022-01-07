
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct uip_tcpseg {struct uip_tcpseg* next; } ;


 scalar_t__ uip_tcpseg_free (struct uip_tcpseg*) ;

u8_t uip_tcpsegs_free(struct uip_tcpseg *seg)
{
 u8_t cnt = 0;
 struct uip_tcpseg *next;

 while(seg!=((void*)0)) {
  next = seg->next;
  cnt += uip_tcpseg_free(seg);
  seg = next;
 }

 return cnt;
}
