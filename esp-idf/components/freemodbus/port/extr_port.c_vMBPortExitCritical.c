
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _lock_release (int *) ;
 int s_port_lock ;

inline void
vMBPortExitCritical(void)
{
    _lock_release(&s_port_lock);
}
