
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct rtentry_dbg {int * rtd_lock; int rtd_lock_cnt; } ;
struct rtentry {int dummy; } ;


 size_t CTRACE_HIST_SIZE ;
 int RTD_TRACE ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 size_t atomic_add_32_ov (int *,int) ;
 int ctrace_record (int *) ;
 int rte_debug ;

__attribute__((used)) static inline void
rte_lock_debug(struct rtentry_dbg *rte)
{
 uint32_t idx;

 RT_LOCK_ASSERT_HELD((struct rtentry *)rte);
 idx = atomic_add_32_ov(&rte->rtd_lock_cnt, 1) % CTRACE_HIST_SIZE;
 if (rte_debug & RTD_TRACE)
  ctrace_record(&rte->rtd_lock[idx]);
}
