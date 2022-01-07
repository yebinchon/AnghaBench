
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int dtrace_id_t ;
typedef int arm_saved_state_t ;
struct TYPE_4__ {scalar_t__ sp; int * r; } ;
struct TYPE_3__ {scalar_t__ sp; int * x; } ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int) ;
 int DTRACE_CPUFLAG_SET (int) ;
 int current_thread () ;
 int dtrace_fuword32 (int ) ;
 int dtrace_fuword64 (int ) ;
 int * find_user_regs (int ) ;
 scalar_t__ is_saved_state32 (int *) ;
 TYPE_2__* saved_state32 (int *) ;
 TYPE_1__* saved_state64 (int *) ;

uint64_t
fasttrap_pid_getarg(void *arg, dtrace_id_t id, void *parg, int argno,
  int aframes)
{
#pragma unused(arg, id, parg, aframes)
 arm_saved_state_t* regs = find_user_regs(current_thread());

 if (is_saved_state32(regs)) {

  if (argno < 4)
   return saved_state32(regs)->r[argno];


  uint32_t value;
  uint32_t* sp = (uint32_t*)(uintptr_t) saved_state32(regs)->sp;
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fuword32((user_addr_t) (sp+argno-4));
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

  return value;
 }
 else {

  if (argno < 8)
   return saved_state64(regs)->x[argno];


  uint64_t value;
  uint64_t* sp = (uint64_t*) saved_state64(regs)->sp;
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fuword64((user_addr_t) (sp+argno-8));
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

  return value;
 }

}
