
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry_dbg {int rtd_inuse; int rtd_alloc; } ;
struct rtentry {int dummy; } ;


 int RTD_INUSE ;
 int RTD_TRACE ;
 int bzero (struct rtentry_dbg*,int) ;
 int ctrace_record (int *) ;
 int rte_debug ;
 int rte_zone ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static inline struct rtentry *
rte_alloc_debug(void)
{
 struct rtentry_dbg *rte;

 rte = ((struct rtentry_dbg *)zalloc(rte_zone));
 if (rte != ((void*)0)) {
  bzero(rte, sizeof (*rte));
  if (rte_debug & RTD_TRACE)
   ctrace_record(&rte->rtd_alloc);
  rte->rtd_inuse = RTD_INUSE;
 }
 return ((struct rtentry *)rte);
}
