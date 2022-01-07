
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* hv_thread_target; } ;


 TYPE_1__* current_thread () ;

void*
hv_get_thread_target(void) {
 return current_thread()->hv_thread_target;
}
