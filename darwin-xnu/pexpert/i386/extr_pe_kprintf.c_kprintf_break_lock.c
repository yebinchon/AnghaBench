
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprintf_lock ;
 int simple_lock_init (int *,int ) ;

void
kprintf_break_lock(void)
{
 simple_lock_init(&kprintf_lock, 0);
}
