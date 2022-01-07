
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct rtentry_dbg {scalar_t__ rtd_inuse; int * rtd_refrele; int rtd_refrele_cnt; } ;


 size_t CTRACE_HIST_SIZE ;
 scalar_t__ RTD_INUSE ;
 int RTD_TRACE ;
 size_t atomic_add_16_ov (int *,int) ;
 int ctrace_record (int *) ;
 int panic (char*,struct rtentry_dbg*) ;
 int rte_debug ;

__attribute__((used)) static inline void
rtunref_audit(struct rtentry_dbg *rte)
{
 uint16_t idx;

 if (rte->rtd_inuse != RTD_INUSE) {
  panic("rtunref: on freed rte=%p\n", rte);

 }
 idx = atomic_add_16_ov(&rte->rtd_refrele_cnt, 1) % CTRACE_HIST_SIZE;
 if (rte_debug & RTD_TRACE)
  ctrace_record(&rte->rtd_refrele[idx]);
}
