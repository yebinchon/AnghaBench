
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_1__ fasttrap_probe_t ;
struct TYPE_6__ {scalar_t__ sp; scalar_t__* x; } ;
typedef TYPE_2__ arm_saved_state64_t ;


 int MIN (int,int ) ;
 int fasttrap_fuword64_noerr (scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
fasttrap_usdt_args64(fasttrap_probe_t *probe, arm_saved_state64_t *regs64, int argc,
    uint64_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];


  if (x < 8) {
   argv[i] = regs64->x[x];
  } else {
   fasttrap_fuword64_noerr(regs64->sp + (x - 8) * sizeof(uint64_t), &argv[i]);
  }
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
