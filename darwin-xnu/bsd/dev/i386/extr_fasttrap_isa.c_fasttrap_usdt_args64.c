
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rsp; } ;
struct TYPE_7__ {scalar_t__ rdi; TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
typedef scalar_t__ user_addr_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_3__ fasttrap_probe_t ;


 int MIN (int,int ) ;
 int fasttrap_fuword64_noerr (scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
fasttrap_usdt_args64(fasttrap_probe_t *probe, x86_saved_state64_t *regs64, int argc,
    uint64_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);
 user_addr_t stack = (user_addr_t)regs64->isf.rsp;

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  if (x < 6) {

   argv[i] = (&regs64->rdi)[x];
  } else {
   fasttrap_fuword64_noerr(stack + (x * sizeof(uint64_t)), &argv[i]);
  }
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
