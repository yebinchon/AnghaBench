
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_lock (int ) ;
 int vlan_lck_mtx ;

__attribute__((used)) static __inline__ void
vlan_lock(void)
{
    lck_mtx_lock(vlan_lck_mtx);
    return;
}
