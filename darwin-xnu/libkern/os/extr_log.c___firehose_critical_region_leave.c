
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_preemption () ;

void
__firehose_critical_region_leave(void) {
        enable_preemption();
        return;
}
