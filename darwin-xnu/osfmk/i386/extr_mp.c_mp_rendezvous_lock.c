
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_rv_lock ;
 int mp_safe_spin_lock (int *) ;

void
mp_rendezvous_lock(void)
{
 (void) mp_safe_spin_lock(&mp_rv_lock);
}
