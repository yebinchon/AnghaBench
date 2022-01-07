
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_STATISTICS_TIME_WINDOW ;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int NSEC_PER_SEC ;
 int host_statistics_lck ;
 int host_statistics_lck_grp ;
 int host_statistics_time_window ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int nanoseconds_to_absolutetime (int,int *) ;

void
host_statistics_init(void)
{
 host_statistics_lck_grp = lck_grp_alloc_init("host_statistics", LCK_GRP_ATTR_NULL);
 lck_mtx_init(&host_statistics_lck, host_statistics_lck_grp, LCK_ATTR_NULL);
 nanoseconds_to_absolutetime((HOST_STATISTICS_TIME_WINDOW * NSEC_PER_SEC), &host_statistics_time_window);
}
