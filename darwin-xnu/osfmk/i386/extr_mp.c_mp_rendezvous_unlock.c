
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_rv_lock ;
 int simple_unlock (int *) ;

void
mp_rendezvous_unlock(void)
{
 simple_unlock(&mp_rv_lock);
}
