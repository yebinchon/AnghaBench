
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int proc_t ;
struct TYPE_3__ {scalar_t__ ftt_installed; int ftt_pc; int ftt_instr; scalar_t__ ftt_thumb; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;


 scalar_t__ FASTTRAP_ARM32_INSTR ;
 scalar_t__ FASTTRAP_ARM64_INSTR ;
 scalar_t__ FASTTRAP_THUMB32_INSTR ;
 scalar_t__ proc_is64bit_data (int *) ;
 scalar_t__ uread (int *,scalar_t__*,int,int ) ;
 scalar_t__ uwrite (int *,int *,int,int ) ;

int
fasttrap_tracepoint_remove(proc_t *p, fasttrap_tracepoint_t *tp)
{

 uint32_t instr;
 int size;

 if (proc_is64bit_data(p)) {




  size = 4;
  if (uread(p, &instr, size, tp->ftt_pc) != 0)
   goto end;

  if (instr != FASTTRAP_ARM64_INSTR)
   goto end;
 } else {




  size = tp->ftt_thumb ? 2 : 4;
  if (uread(p, &instr, size, tp->ftt_pc) != 0)
   goto end;

  if (tp->ftt_thumb) {
   if (*((uint16_t*) &instr) != FASTTRAP_THUMB32_INSTR)
    goto end;
  } else {
   if (instr != FASTTRAP_ARM32_INSTR)
    goto end;
  }
 }

 if (uwrite(p, &tp->ftt_instr, size, tp->ftt_pc) != 0)
  return (-1);

end:
 tp->ftt_installed = 0;

 return (0);
}
