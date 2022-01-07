
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ cpu_max_observed_int_latency_vector; scalar_t__ cpu_max_observed_int_latency; } ;


 TYPE_1__** cpu_data_ptr ;
 size_t real_ncpus ;

void interrupt_reset_latency_stats(void) {
 uint32_t i;
 for (i = 0; i < real_ncpus; i++) {
  cpu_data_ptr[i]->cpu_max_observed_int_latency =
      cpu_data_ptr[i]->cpu_max_observed_int_latency_vector = 0;
 }
}
