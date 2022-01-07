
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_preemption_internal () ;

void _enable_preemption(void) {
 enable_preemption_internal();
}
