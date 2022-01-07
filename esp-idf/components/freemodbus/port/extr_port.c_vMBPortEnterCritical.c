
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _lock_acquire (int *) ;
 int s_port_lock ;

inline void
vMBPortEnterCritical(void)
{
    _lock_acquire(&s_port_lock);
}
