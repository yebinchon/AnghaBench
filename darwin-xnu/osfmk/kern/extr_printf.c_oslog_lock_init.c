
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int lck_grp_init (int *,char*,int ) ;
 int lck_spin_init (int *,int *,int ) ;
 int oslog_stream_lock ;
 int oslog_stream_lock_grp ;

void
oslog_lock_init(void)
{
 lck_grp_init(&oslog_stream_lock_grp, "oslog stream", LCK_GRP_ATTR_NULL);
 lck_spin_init(&oslog_stream_lock, &oslog_stream_lock_grp, LCK_ATTR_NULL);
}
