
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L_CLR (int ) ;
 int init_ntp_loop () ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_spin_alloc_init (int ,int ) ;
 int ntp_lock ;
 int ntp_lock_attr ;
 int ntp_lock_grp ;
 int ntp_lock_grp_attr ;
 int time_freq ;
 int time_offset ;
 scalar_t__ updated ;

void
ntp_init(void)
{

 L_CLR(time_offset);
 L_CLR(time_freq);

 ntp_lock_grp_attr = lck_grp_attr_alloc_init();
 ntp_lock_grp = lck_grp_alloc_init("ntp_lock", ntp_lock_grp_attr);
 ntp_lock_attr = lck_attr_alloc_init();
 ntp_lock = lck_spin_alloc_init(ntp_lock_grp, ntp_lock_attr);

 updated = 0;

 init_ntp_loop();
}
