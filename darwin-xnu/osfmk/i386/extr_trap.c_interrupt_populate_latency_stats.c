
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ cpu_max_observed_int_latency; int cpu_max_observed_int_latency_vector; } ;


 TYPE_1__** cpu_data_ptr ;
 size_t real_ncpus ;
 int snprintf (char*,unsigned int,char*,size_t,int,scalar_t__) ;

void interrupt_populate_latency_stats(char *buf, unsigned bufsize) {
 uint32_t i, tcpu = ~0;
 uint64_t cur_max = 0;

 for (i = 0; i < real_ncpus; i++) {
  if (cur_max < cpu_data_ptr[i]->cpu_max_observed_int_latency) {
   cur_max = cpu_data_ptr[i]->cpu_max_observed_int_latency;
   tcpu = i;
  }
 }

 if (tcpu < real_ncpus)
  snprintf(buf, bufsize, "0x%x 0x%x 0x%llx", tcpu, cpu_data_ptr[tcpu]->cpu_max_observed_int_latency_vector, cpu_data_ptr[tcpu]->cpu_max_observed_int_latency);
}
