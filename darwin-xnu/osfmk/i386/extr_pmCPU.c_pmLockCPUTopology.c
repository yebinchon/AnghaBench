
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

__attribute__((used)) static void
pmLockCPUTopology(int lock)
{
    if (lock) {
 mp_safe_spin_lock(&x86_topo_lock);
    } else {
 simple_unlock(&x86_topo_lock);
    }
}
