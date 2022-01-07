
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dbgwrap_status_t ;
typedef int dbgwrap_reg_t ;
struct TYPE_3__ {scalar_t__* coresight_base; } ;
typedef TYPE_1__ cpu_data_t ;


 size_t CORESIGHT_UTT ;
 int volatile DBGWRAP_DBGACK ;
 int DBGWRAP_ERR_HALT_TIMEOUT ;
 int DBGWRAP_ERR_UNSUPPORTED ;
 scalar_t__ DBGWRAP_REG_OFFSET ;
 int DBGWRAP_SUCCESS ;
 TYPE_1__* cpu_datap (int) ;
 scalar_t__ mach_absolute_time () ;
 int nanoseconds_to_absolutetime (scalar_t__,scalar_t__*) ;

dbgwrap_status_t
ml_dbgwrap_wait_cpu_halted(int cpu_index, uint64_t timeout_ns)
{
 cpu_data_t *cdp = cpu_datap(cpu_index);
 if ((cdp == ((void*)0)) || (cdp->coresight_base[CORESIGHT_UTT] == 0))
  return DBGWRAP_ERR_UNSUPPORTED;

 volatile dbgwrap_reg_t *dbgWrapReg = (volatile dbgwrap_reg_t *)(cdp->coresight_base[CORESIGHT_UTT] + DBGWRAP_REG_OFFSET);

 uint64_t interval;
 nanoseconds_to_absolutetime(timeout_ns, &interval);
 uint64_t deadline = mach_absolute_time() + interval;
 while (!(*dbgWrapReg & DBGWRAP_DBGACK)) {
  if (mach_absolute_time() > deadline)
   return DBGWRAP_ERR_HALT_TIMEOUT;
 }

 return DBGWRAP_SUCCESS;
}
