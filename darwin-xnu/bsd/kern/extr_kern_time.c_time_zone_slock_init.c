
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_spin_alloc_init (int ,int ) ;
 int tz_slock ;
 int tz_slock_attr ;
 int tz_slock_grp ;
 int tz_slock_grp_attr ;

void
time_zone_slock_init(void)
{

 tz_slock_grp_attr = lck_grp_attr_alloc_init();

 tz_slock_grp = lck_grp_alloc_init("tzlock", tz_slock_grp_attr);


 tz_slock_attr = lck_attr_alloc_init();


 tz_slock = lck_spin_alloc_init(tz_slock_grp, tz_slock_attr);
}
