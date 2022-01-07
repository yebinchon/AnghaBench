
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int proc_t ;
struct TYPE_3__ {int ftt_installed; int ftt_pc; scalar_t__ ftt_thumb; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;


 scalar_t__ FASTTRAP_ARM32_INSTR ;
 scalar_t__ FASTTRAP_ARM64_INSTR ;
 int FASTTRAP_THUMB32_INSTR ;
 scalar_t__ proc_is64bit_data (int *) ;
 scalar_t__ uwrite (int *,scalar_t__*,int,int ) ;

int
fasttrap_tracepoint_install(proc_t *p, fasttrap_tracepoint_t *tp)
{

 uint32_t instr;
 int size;

 if (proc_is64bit_data(p)) {
  size = 4;
  instr = FASTTRAP_ARM64_INSTR;
 }
 else {
  size = tp->ftt_thumb ? 2 : 4;
  if (tp->ftt_thumb) {
   *((uint16_t*) &instr) = FASTTRAP_THUMB32_INSTR;
  } else {
   instr = FASTTRAP_ARM32_INSTR;
  }
 }

 if (uwrite(p, &instr, size, tp->ftt_pc) != 0)
  return (-1);

 tp->ftt_installed = 1;

 return (0);
}
