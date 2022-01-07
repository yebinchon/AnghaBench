
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_preemption_internal () ;

void _disable_preemption(void) {
 disable_preemption_internal();
}
