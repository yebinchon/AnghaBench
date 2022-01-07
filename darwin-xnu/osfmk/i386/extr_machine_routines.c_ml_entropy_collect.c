
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ index_ptr; scalar_t__ buffer; } ;


 scalar_t__ ENTROPY_BUFFER_SIZE ;
 TYPE_1__ EntropyData ;
 int assert (int) ;
 scalar_t__ cpu_number () ;
 scalar_t__ master_cpu ;
 int rdtsc_nofence (int,int) ;
 int ror32 (int,int) ;

void
ml_entropy_collect(void)
{
 uint32_t tsc_lo, tsc_hi;
 uint32_t *ep;

 assert(cpu_number() == master_cpu);


 if (EntropyData.index_ptr - EntropyData.buffer == ENTROPY_BUFFER_SIZE)
  ep = EntropyData.index_ptr = EntropyData.buffer;
 else
  ep = EntropyData.index_ptr++;

 rdtsc_nofence(tsc_lo, tsc_hi);
 *ep = ror32(*ep, 9) ^ tsc_lo;
}
