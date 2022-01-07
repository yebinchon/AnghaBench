
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_spin_unlock (int ) ;
 int vnode_list_spin_lock ;

void
vnode_list_unlock(void)
{
 lck_spin_unlock(vnode_list_spin_lock);
}
