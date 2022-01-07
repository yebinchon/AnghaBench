
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int assert (int ) ;
 int * devsw_lock_grp ;
 int devsw_lock_list_mtx ;
 int devsw_locks ;
 int * lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;

void
devsw_init()
{
 devsw_lock_grp = lck_grp_alloc_init("devsw", ((void*)0));
 assert(devsw_lock_grp != ((void*)0));

 lck_mtx_init(&devsw_lock_list_mtx, devsw_lock_grp, ((void*)0));
 TAILQ_INIT(&devsw_locks);
}
