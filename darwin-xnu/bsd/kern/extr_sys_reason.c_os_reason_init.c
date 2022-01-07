
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reason {int dummy; } ;


 int OS_REASON_MAX_COUNT ;
 int OS_REASON_RESERVE_COUNT ;
 int assert (int) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int os_reason_lock_attr ;
 int os_reason_lock_grp ;
 int os_reason_lock_grp_attr ;
 int * os_reason_zone ;
 int panic (char*) ;
 int zfill (int *,int ) ;
 int * zinit (int,int,int,char*) ;

void
os_reason_init()
{
 int reasons_allocated = 0;




 os_reason_lock_grp_attr = lck_grp_attr_alloc_init();
 os_reason_lock_grp = lck_grp_alloc_init("os_reason_lock", os_reason_lock_grp_attr);
 os_reason_lock_attr = lck_attr_alloc_init();




 os_reason_zone = zinit(sizeof(struct os_reason), OS_REASON_MAX_COUNT * sizeof(struct os_reason),
    OS_REASON_MAX_COUNT, "os reasons");
 if (os_reason_zone == ((void*)0)) {
  panic("failed to initialize os_reason_zone");
 }







 reasons_allocated = zfill(os_reason_zone, OS_REASON_RESERVE_COUNT);
 assert(reasons_allocated > 0);
}
