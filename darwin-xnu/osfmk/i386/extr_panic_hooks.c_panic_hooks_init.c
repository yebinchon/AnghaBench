
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hw_lock_init (int *) ;
 int panic_hooks ;
 int panic_hooks_lock ;
 int queue_init (int *) ;

void panic_hooks_init(void)
{
 hw_lock_init(&panic_hooks_lock);
 queue_init(&panic_hooks);
}
