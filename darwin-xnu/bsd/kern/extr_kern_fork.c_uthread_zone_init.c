
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int dummy; } ;


 int THREAD_CHUNK ;
 int assert (int ) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int rethrottle_lock_attr ;
 int rethrottle_lock_grp ;
 int rethrottle_lock_grp_attr ;
 int thread_max ;
 int * uthread_zone ;
 int * zinit (int,int,int,char*) ;

__attribute__((used)) static void
uthread_zone_init(void)
{
 assert(uthread_zone == ((void*)0));

 rethrottle_lock_grp_attr = lck_grp_attr_alloc_init();
 rethrottle_lock_grp = lck_grp_alloc_init("rethrottle", rethrottle_lock_grp_attr);
 rethrottle_lock_attr = lck_attr_alloc_init();

 uthread_zone = zinit(sizeof(struct uthread),
                      thread_max * sizeof(struct uthread),
                      THREAD_CHUNK * sizeof(struct uthread),
                      "uthreads");
}
