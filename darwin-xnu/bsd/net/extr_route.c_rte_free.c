
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_refcnt; } ;


 int RTD_DEBUG ;
 int panic (char*,struct rtentry*,scalar_t__) ;
 int rte_debug ;
 int rte_free_debug (struct rtentry*) ;
 int rte_zone ;
 int zfree (int ,struct rtentry*) ;

__attribute__((used)) static void
rte_free(struct rtentry *p)
{
 if (rte_debug & RTD_DEBUG) {
  rte_free_debug(p);
  return;
 }

 if (p->rt_refcnt != 0) {
  panic("rte_free: rte=%p refcnt=%d non-zero\n", p, p->rt_refcnt);

 }

 zfree(rte_zone, p);
}
