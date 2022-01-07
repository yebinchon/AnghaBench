
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unaligned_u64 ;
typedef TYPE_3__* proc_t ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct TYPE_7__ {TYPE_2__* p_stats; TYPE_1__ p_start; } ;
struct TYPE_6__ {int ps_start; } ;


 TYPE_3__* PROC_NULL ;

void
proc_starttime_kdp(void *p, unaligned_u64 *tv_sec, unaligned_u64 *tv_usec, unaligned_u64 *abstime)
{
 proc_t pp = (proc_t)p;
 if (pp != PROC_NULL) {
  if (tv_sec != ((void*)0))
   *tv_sec = pp->p_start.tv_sec;
  if (tv_usec != ((void*)0))
   *tv_usec = pp->p_start.tv_usec;
  if (abstime != ((void*)0)) {
   if (pp->p_stats != ((void*)0))
    *abstime = pp->p_stats->ps_start;
   else
    *abstime = 0;
  }
 }
}
