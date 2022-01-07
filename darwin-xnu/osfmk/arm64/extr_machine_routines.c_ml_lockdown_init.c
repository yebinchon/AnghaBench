
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int * lockdown_handler_grp ;
 int lockdown_handler_lck ;

void ml_lockdown_init() {
    lockdown_handler_grp = lck_grp_alloc_init("lockdown_handler", ((void*)0));
    assert(lockdown_handler_grp != ((void*)0));

    lck_mtx_init(&lockdown_handler_lck, lockdown_handler_grp, ((void*)0));

}
