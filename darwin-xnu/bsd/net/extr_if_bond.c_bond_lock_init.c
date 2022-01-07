
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;


 int bond_lck_mtx ;
 int * my_lck_grp_alloc_init (char*) ;
 int my_lck_mtx_alloc_init (int *) ;

__attribute__((used)) static __inline__ void
bond_lock_init(void)
{
    lck_grp_t * bond_lck_grp;

    bond_lck_grp = my_lck_grp_alloc_init("if_bond");
    bond_lck_mtx = my_lck_mtx_alloc_init(bond_lck_grp);
}
