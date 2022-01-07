
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int dbgwrap_status_t ;
typedef int dbgwrap_reg_t ;
struct TYPE_3__ {scalar_t__* coresight_base; } ;
typedef TYPE_1__ cpu_data_t ;


 size_t CORESIGHT_UTT ;
 int DBGWRAP_DBGHALT ;
 int DBGWRAP_ERR_INPROGRESS ;
 int DBGWRAP_ERR_SELF_HALT ;
 int DBGWRAP_ERR_UNSUPPORTED ;
 scalar_t__ DBGWRAP_REG_OFFSET ;
 int DBGWRAP_SUCCESS ;
 int DBGWRAP_WARN_ALREADY_HALTED ;
 TYPE_1__* cpu_datap (int) ;
 int cpu_number () ;
 scalar_t__ halt_from_cpu ;
 int hw_compare_and_store (scalar_t__,unsigned int,scalar_t__*) ;
 scalar_t__ ml_dbgwrap_cpu_is_halted (int) ;
 int ml_dbgwrap_wait_cpu_halted (int,scalar_t__) ;

dbgwrap_status_t
ml_dbgwrap_halt_cpu(int cpu_index, uint64_t timeout_ns)
{
 cpu_data_t *cdp = cpu_datap(cpu_index);
 if ((cdp == ((void*)0)) || (cdp->coresight_base[CORESIGHT_UTT] == 0))
  return DBGWRAP_ERR_UNSUPPORTED;



 int curcpu = cpu_number();
 if (cpu_index == curcpu)
  return DBGWRAP_ERR_SELF_HALT;

 if (!hw_compare_and_store((uint32_t)-1, (unsigned int)curcpu, &halt_from_cpu) &&
     (halt_from_cpu != (uint32_t)curcpu))
  return DBGWRAP_ERR_INPROGRESS;

 volatile dbgwrap_reg_t *dbgWrapReg = (volatile dbgwrap_reg_t *)(cdp->coresight_base[CORESIGHT_UTT] + DBGWRAP_REG_OFFSET);

 if (ml_dbgwrap_cpu_is_halted(cpu_index))
  return DBGWRAP_WARN_ALREADY_HALTED;


 *dbgWrapReg = DBGWRAP_DBGHALT;

 if (timeout_ns != 0) {
  dbgwrap_status_t stat = ml_dbgwrap_wait_cpu_halted(cpu_index, timeout_ns);
  return stat;
 }
 else
  return DBGWRAP_SUCCESS;
}
