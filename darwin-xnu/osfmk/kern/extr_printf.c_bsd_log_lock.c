
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_log_spinlock ;
 int simple_lock (int *) ;

void
bsd_log_lock(void)
{
 simple_lock(&bsd_log_spinlock);
}
