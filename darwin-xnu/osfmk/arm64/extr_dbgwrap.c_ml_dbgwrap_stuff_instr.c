
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
 scalar_t__ EDITR_REG_OFFSET ;
 int EDRCR_CSE ;
 scalar_t__ EDRCR_REG_OFFSET ;
 int volatile EDSCR_ERR ;
 int volatile EDSCR_ITE ;
 int volatile EDSCR_MA ;
 scalar_t__ EDSCR_REG_OFFSET ;
 int MAX_EDITR_RETRIES ;
 int MAX_STUFFED_INSTRS ;
 int hw_atomic_add (int *,int) ;
 scalar_t__ mach_absolute_time () ;
 int nanoseconds_to_absolutetime (scalar_t__,scalar_t__*) ;
 int stuffed_instr_count ;
 int* stuffed_instrs ;

__attribute__((used)) static void
ml_dbgwrap_stuff_instr(cpu_data_t *cdp, uint32_t instr, uint64_t timeout_ns, dbgwrap_status_t *status)
{
 if (*status < 0)
  return;

 volatile uint32_t *editr = (volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + EDITR_REG_OFFSET);
 volatile uint32_t *edscr = (volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + EDSCR_REG_OFFSET);
 volatile uint32_t *edrcr = (volatile uint32_t *)(cdp->coresight_base[CORESIGHT_ED] + EDRCR_REG_OFFSET);

 int retries = 0;

 uint64_t interval;
 nanoseconds_to_absolutetime(timeout_ns, &interval);
 uint64_t deadline = mach_absolute_time() + interval;






 do {
  *editr = instr;
  volatile uint32_t edscr_val;
  while (!((edscr_val = *edscr) & EDSCR_ITE)) {
   if (mach_absolute_time() > deadline) {
    *status = DBGWRAP_ERR_INSTR_TIMEOUT;
    return;
   }
   if (edscr_val & EDSCR_ERR)
    break;
  }
  if (edscr_val & EDSCR_ERR) {


   if (edscr_val & EDSCR_MA)
    *edscr = edscr_val & ~EDSCR_MA;
   *edrcr = EDRCR_CSE;
   ++retries;
  } else
   break;
 } while (retries < MAX_EDITR_RETRIES);

 if (retries >= MAX_EDITR_RETRIES) {
  *status = DBGWRAP_ERR_INSTR_ERROR;
  return;
 }
}
