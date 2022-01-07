
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_log_spinlock ;
 int simple_unlock (int *) ;

void
bsd_log_unlock(void)
{
 simple_unlock(&bsd_log_spinlock);
}
