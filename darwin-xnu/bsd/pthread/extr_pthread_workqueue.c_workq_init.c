
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct workqueue {int dummy; } ;
struct workq_threadreq_s {int dummy; } ;
struct TYPE_6__ {int abstime; int usecs; } ;
struct TYPE_5__ {int abstime; int usecs; } ;
struct TYPE_4__ {int abstime; int usecs; } ;


 int NSEC_PER_USEC ;
 int clock_interval_to_absolutetime_interval (int ,int ,int *) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int workq_lck_attr ;
 int workq_lck_grp ;
 int workq_lck_grp_attr ;
 void* workq_zone_threadreq ;
 void* workq_zone_workqueue ;
 TYPE_3__ wq_max_timer_interval ;
 TYPE_2__ wq_reduce_pool_window ;
 TYPE_1__ wq_stalled_window ;
 void* zinit (int,int,int,char*) ;

void
workq_init(void)
{
 workq_lck_grp_attr = lck_grp_attr_alloc_init();
 workq_lck_attr = lck_attr_alloc_init();
 workq_lck_grp = lck_grp_alloc_init("workq", workq_lck_grp_attr);

 workq_zone_workqueue = zinit(sizeof(struct workqueue),
   1024 * sizeof(struct workqueue), 8192, "workq.wq");
 workq_zone_threadreq = zinit(sizeof(struct workq_threadreq_s),
   1024 * sizeof(struct workq_threadreq_s), 8192, "workq.threadreq");

 clock_interval_to_absolutetime_interval(wq_stalled_window.usecs,
   NSEC_PER_USEC, &wq_stalled_window.abstime);
 clock_interval_to_absolutetime_interval(wq_reduce_pool_window.usecs,
   NSEC_PER_USEC, &wq_reduce_pool_window.abstime);
 clock_interval_to_absolutetime_interval(wq_max_timer_interval.usecs,
   NSEC_PER_USEC, &wq_max_timer_interval.abstime);
}
