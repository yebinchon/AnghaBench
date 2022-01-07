
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_CHECKIN_MASK ;
 int CPU_CHECKIN_MIN_INTERVAL_US ;
 int CPU_EXPECTED_MASK ;
 int MAX_CPUS ;
 int assert (int) ;
 int cpu_checked_in_bit (int ) ;
 int cpu_expected_bit (int ) ;
 int cpu_quiescent_counter_set_min_interval_us (int ) ;

void
cpu_quiescent_counter_init(void)
{
 assert(CPU_CHECKIN_MASK & cpu_checked_in_bit(MAX_CPUS));
 assert(CPU_EXPECTED_MASK & cpu_expected_bit(MAX_CPUS));
 assert((CPU_CHECKIN_MASK & cpu_expected_bit(MAX_CPUS)) == 0);
 assert((CPU_EXPECTED_MASK & cpu_checked_in_bit(MAX_CPUS)) == 0);

 cpu_quiescent_counter_set_min_interval_us(CPU_CHECKIN_MIN_INTERVAL_US);
}
