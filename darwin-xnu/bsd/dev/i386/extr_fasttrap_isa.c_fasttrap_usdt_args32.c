
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uesp; } ;
typedef TYPE_1__ x86_saved_state32_t ;
typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int* ftp_argmap; int ftp_nargs; } ;
typedef TYPE_2__ fasttrap_probe_t ;


 int MIN (int,int ) ;
 int fasttrap_fuword32_noerr (int ,scalar_t__*) ;

__attribute__((used)) static void
fasttrap_usdt_args32(fasttrap_probe_t *probe, x86_saved_state32_t *regs32, int argc,
    uint32_t *argv)
{
 int i, x, cap = MIN(argc, probe->ftp_nargs);
 uint32_t *stack = (uint32_t *)(uintptr_t)(regs32->uesp);

 for (i = 0; i < cap; i++) {
  x = probe->ftp_argmap[i];

  fasttrap_fuword32_noerr((user_addr_t)(unsigned long)&stack[x], &argv[i]);
 }

 for (; i < argc; i++) {
  argv[i] = 0;
 }
}
