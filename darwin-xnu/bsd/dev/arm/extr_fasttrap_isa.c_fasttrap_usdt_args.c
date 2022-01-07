
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_1__ fasttrap_probe_t ;
struct TYPE_6__ {scalar_t__ sp; scalar_t__* r; } ;
typedef TYPE_2__ arm_saved_state_t ;


 int MIN (int,int ) ;
 int fasttrap_fuword32_noerr (scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
fasttrap_usdt_args(fasttrap_probe_t *probe, arm_saved_state_t *regs, int argc,
    uint32_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  if (x < 4) {
   argv[i] = regs->r[x];
  } else {
   fasttrap_fuword32_noerr(regs->sp + (x - 4) * sizeof(uint32_t), &argv[i]);
  }
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
