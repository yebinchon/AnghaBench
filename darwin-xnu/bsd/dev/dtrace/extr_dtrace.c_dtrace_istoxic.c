
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t cpu_id; } ;
struct TYPE_5__ {uintptr_t cpuc_dtrace_illval; } ;
struct TYPE_4__ {uintptr_t dtt_base; uintptr_t dtt_limit; } ;


 TYPE_3__* CPU ;
 int CPU_DTRACE_BADADDR ;
 int DTRACE_CPUFLAG_SET (int ) ;
 TYPE_2__* cpu_core ;
 TYPE_1__* dtrace_toxrange ;
 int dtrace_toxranges ;

__attribute__((used)) static int
dtrace_istoxic(uintptr_t kaddr, size_t size)
{
 uintptr_t taddr, tsize;
 int i;

 for (i = 0; i < dtrace_toxranges; i++) {
  taddr = dtrace_toxrange[i].dtt_base;
  tsize = dtrace_toxrange[i].dtt_limit - taddr;

  if (kaddr - taddr < tsize) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[CPU->cpu_id].cpuc_dtrace_illval = kaddr;
   return (1);
  }

  if (taddr - kaddr < size) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[CPU->cpu_id].cpuc_dtrace_illval = taddr;
   return (1);
  }
 }

 return (0);
}
