
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int panic (char*) ;

void ml_cpu_signal_deferred_adjust_timer(uint64_t nanosecs) {
 (void)nanosecs;
 panic("Platform does not support ACC Fast IPI");
}
