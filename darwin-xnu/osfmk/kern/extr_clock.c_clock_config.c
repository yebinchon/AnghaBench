
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ NSEC_PER_SEC ;
 int clock_lock_init () ;
 int clock_oldconfig () ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int nanoseconds_to_absolutetime (int ,int *) ;
 int ntp_init () ;
 int settime_lock ;
 int settime_lock_attr ;
 int settime_lock_grp ;
 int settime_lock_grp_attr ;
 int ticks_per_sec ;

void
clock_config(void)
{

 clock_lock_init();

 settime_lock_grp_attr = lck_grp_attr_alloc_init();
 settime_lock_grp = lck_grp_alloc_init("settime grp", settime_lock_grp_attr);
 settime_lock_attr = lck_attr_alloc_init();
 lck_mtx_init(&settime_lock, settime_lock_grp, settime_lock_attr);

 clock_oldconfig();

 ntp_init();

 nanoseconds_to_absolutetime((uint64_t)NSEC_PER_SEC, &ticks_per_sec);
}
