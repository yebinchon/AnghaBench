
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_log_init () ;
 int bsd_log_spinlock ;
 int printf_lock ;
 int simple_lock_init (int *,int ) ;

void

printf_init(void)
{



 simple_lock_init(&printf_lock, 0);
 simple_lock_init(&bsd_log_spinlock, 0);
 bsd_log_init();
}
