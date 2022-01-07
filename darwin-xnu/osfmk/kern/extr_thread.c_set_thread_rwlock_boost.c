
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rwlock_count; } ;


 TYPE_1__* current_thread () ;

void
set_thread_rwlock_boost(void)
{
 current_thread()->rwlock_count++;
}
