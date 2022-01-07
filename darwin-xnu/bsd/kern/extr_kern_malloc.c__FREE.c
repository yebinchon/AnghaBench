
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_LAST ;
 int kfree_addr (void*) ;
 int panic (char*) ;

void
_FREE(
 void *addr,
 int type)
{
 if (type >= M_LAST)
  panic("_free TYPE");

 if (!addr)
  return;

 kfree_addr(addr);
}
