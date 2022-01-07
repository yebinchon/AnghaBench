
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;


 int * my_lck_grp_alloc_init (char*) ;
 int my_lck_mtx_alloc_init (int *) ;
 int vlan_lck_mtx ;

__attribute__((used)) static __inline__ void
vlan_lock_init(void)
{
    lck_grp_t * vlan_lck_grp;

    vlan_lck_grp = my_lck_grp_alloc_init("if_vlan");
    vlan_lck_mtx = my_lck_mtx_alloc_init(vlan_lck_grp);
}
