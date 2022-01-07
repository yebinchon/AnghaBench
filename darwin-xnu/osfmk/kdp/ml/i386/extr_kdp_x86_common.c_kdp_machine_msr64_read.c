
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int kdp_x86_xcpu_func_t ;
struct TYPE_4__ {int address; } ;
typedef TYPE_1__ kdp_readmsr64_req_t ;
typedef scalar_t__ caddr_t ;


 int KDPERR_NO_ERROR ;
 scalar_t__ KDP_CURRENT_LCPU ;
 scalar_t__ cpu_number () ;
 scalar_t__ kdp_x86_xcpu_invoke (scalar_t__,int ,TYPE_1__*,scalar_t__) ;
 int rdmsr64 (int ) ;

int
kdp_machine_msr64_read(kdp_readmsr64_req_t *rq, caddr_t data, uint16_t lcpu)
{
 uint64_t *value = (uint64_t *) data;
 uint32_t msr = rq->address;

 if ((lcpu != KDP_CURRENT_LCPU) && (lcpu != cpu_number())) {
  return (int) kdp_x86_xcpu_invoke(lcpu, (kdp_x86_xcpu_func_t)kdp_machine_msr64_read, rq, data);
 }

 *value = rdmsr64(msr);
 return KDPERR_NO_ERROR;
}
