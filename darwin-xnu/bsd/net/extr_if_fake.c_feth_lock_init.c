
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;


 int feth_lck_mtx ;
 int * my_lck_grp_alloc_init (char*) ;
 int my_lck_mtx_alloc_init (int *) ;

__attribute__((used)) static inline void
feth_lock_init(void)
{
 lck_grp_t * feth_lck_grp;

 feth_lck_grp = my_lck_grp_alloc_init("fake");
 feth_lck_mtx = my_lck_mtx_alloc_init(feth_lck_grp);
}
