
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_rv_lock ;
 int simple_lock_init (int *,int ) ;

void
mp_rendezvous_break_lock(void)
{
 simple_lock_init(&mp_rv_lock, 0);
}
