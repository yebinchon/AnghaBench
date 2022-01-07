
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bond_lck_mtx ;
 int lck_mtx_lock (int ) ;

__attribute__((used)) static __inline__ void
bond_lock(void)
{
    lck_mtx_lock(bond_lck_mtx);
    return;
}
