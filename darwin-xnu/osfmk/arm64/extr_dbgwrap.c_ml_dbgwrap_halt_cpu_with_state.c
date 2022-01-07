
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int cpsr; void* pc; void* sp; void* lr; void* fp; void** x; } ;
typedef TYPE_1__ dbgwrap_thread_state_t ;
typedef int dbgwrap_status_t ;
struct TYPE_9__ {scalar_t__* coresight_base; } ;
typedef TYPE_2__ cpu_data_t ;


 int ARM_DBG_LOCK_ACCESS_KEY ;
 scalar_t__ ARM_DEBUG_OFFSET_DBGLAR ;
 size_t CORESIGHT_ED ;
 int DBGWRAP_ERR_UNSUPPORTED ;
 int DBGWRAP_WARN_CPU_OFFLINE ;
 int volatile EDPRSR_OSLK ;
 scalar_t__ EDPRSR_REG_OFFSET ;
 int bzero (TYPE_1__*,int) ;
 TYPE_2__* cpu_datap (int) ;
 int ml_dbgwrap_halt_cpu (int,int ) ;
 void* ml_dbgwrap_read_dtr (TYPE_2__*,int ,int *) ;
 int ml_dbgwrap_stuff_instr (TYPE_2__*,int,int ,int *) ;

dbgwrap_status_t
ml_dbgwrap_halt_cpu_with_state(int cpu_index, uint64_t timeout_ns, dbgwrap_thread_state_t *state)
{
 cpu_data_t *cdp = cpu_datap(cpu_index);
 if ((cdp == ((void*)0)) || (cdp->coresight_base[CORESIGHT_ED] == 0))
  return DBGWRAP_ERR_UNSUPPORTED;


 *((volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + ARM_DEBUG_OFFSET_DBGLAR)) = ARM_DBG_LOCK_ACCESS_KEY;

 dbgwrap_status_t status = ml_dbgwrap_halt_cpu(cpu_index, timeout_ns);






 if (*((volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + EDPRSR_REG_OFFSET)) & EDPRSR_OSLK) {
  bzero(state, sizeof(*state));
  return DBGWRAP_WARN_CPU_OFFLINE;
 }

 uint32_t instr;

 for (unsigned int i = 0; i < (sizeof(state->x) / sizeof(state->x[0])); ++i) {
  instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | i;
  ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
  state->x[i] = ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);
 }

 instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | 29;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 state->fp = ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);

 instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | 30;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 state->lr = ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);







 instr = (0x91U << 24) | (31 << 5) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 state->sp = ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);




 instr = (0xD53U << 20) | (1 << 19) | (3 << 16) | (4 << 12) | (5 << 8) | (1 << 5) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 state->pc = ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);



 instr = (0xD53U << 20) | (1 << 19) | (3 << 16) | (4 << 12) | (5 << 8) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 instr = (0xD51U << 20) | (2 << 19) | (3 << 16) | (4 << 8) | 18;
 ml_dbgwrap_stuff_instr(cdp, instr, timeout_ns, &status);
 state->cpsr = (uint32_t)ml_dbgwrap_read_dtr(cdp, timeout_ns, &status);

 return status;
}
