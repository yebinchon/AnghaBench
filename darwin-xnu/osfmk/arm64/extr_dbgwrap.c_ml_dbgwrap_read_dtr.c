
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ dbgwrap_status_t ;
struct TYPE_3__ {scalar_t__* coresight_base; } ;
typedef TYPE_1__ cpu_data_t ;


 size_t CORESIGHT_ED ;
 scalar_t__ DBGWRAP_ERR_INSTR_ERROR ;
 scalar_t__ DBGWRAP_ERR_INSTR_TIMEOUT ;
 scalar_t__ EDDTRRX_REG_OFFSET ;
 scalar_t__ EDDTRTX_REG_OFFSET ;
 int volatile EDSCR_ERR ;
 scalar_t__ EDSCR_REG_OFFSET ;
 int volatile EDSCR_TXFULL ;
 scalar_t__ mach_absolute_time () ;
 int nanoseconds_to_absolutetime (scalar_t__,scalar_t__*) ;

__attribute__((used)) static uint64_t
ml_dbgwrap_read_dtr(cpu_data_t *cdp, uint64_t timeout_ns, dbgwrap_status_t *status)
{
 if (*status < 0)
  return 0;

 uint64_t interval;
 nanoseconds_to_absolutetime(timeout_ns, &interval);
 uint64_t deadline = mach_absolute_time() + interval;



 volatile uint32_t *edscr = (volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + EDSCR_REG_OFFSET);

 while (!(*edscr & EDSCR_TXFULL)) {
  if (*edscr & EDSCR_ERR) {
   *status = DBGWRAP_ERR_INSTR_ERROR;
   return 0;
  }
  if (mach_absolute_time() > deadline) {
   *status = DBGWRAP_ERR_INSTR_TIMEOUT;
   return 0;
  }
 }

 uint32_t dtrrx = *((volatile uint32_t*)(cdp->coresight_base[CORESIGHT_ED] + EDDTRRX_REG_OFFSET));
 uint32_t dtrtx = *((volatile uint32_t*)(cdp->coresight_base[CORESIGHT_ED] + EDDTRTX_REG_OFFSET));

 return (((uint64_t)dtrrx << 32) | dtrtx);
}
