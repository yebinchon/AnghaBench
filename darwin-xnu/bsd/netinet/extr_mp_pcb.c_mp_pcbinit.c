
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY (int) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int mp_lock ;
 int mp_lock_attr ;
 int mp_lock_grp ;
 int mp_lock_grp_attr ;
 int mp_timeout_lock ;

void
mp_pcbinit(void)
{
 static int mp_initialized = 0;

 VERIFY(!mp_initialized);
 mp_initialized = 1;

 mp_lock_grp_attr = lck_grp_attr_alloc_init();
 mp_lock_grp = lck_grp_alloc_init("multipath", mp_lock_grp_attr);
 mp_lock_attr = lck_attr_alloc_init();
 lck_mtx_init(&mp_lock, mp_lock_grp, mp_lock_attr);
 lck_mtx_init(&mp_timeout_lock, mp_lock_grp, mp_lock_attr);
}
