
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int r8; int rcx; int rdx; int rsi; int rdi; } ;
typedef TYPE_1__ x86_saved_state64_t ;
struct TYPE_5__ {int sdp_id; scalar_t__ sdp_patchpoint; struct TYPE_5__* sdp_hashnext; } ;
typedef TYPE_2__ sdt_probe_t ;


 int DTRACE_INVOP_NOP ;
 size_t SDT_ADDR2NDX (uintptr_t) ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__** sdt_probetab ;

int
sdt_invop(uintptr_t addr, uintptr_t *stack, uintptr_t eax)
{
#pragma unused(eax)
 sdt_probe_t *sdt = sdt_probetab[SDT_ADDR2NDX(addr)];

 for (; sdt != ((void*)0); sdt = sdt->sdp_hashnext) {
  if ((uintptr_t)sdt->sdp_patchpoint == addr) {
   x86_saved_state64_t *regs = (x86_saved_state64_t *)stack;

   dtrace_probe(sdt->sdp_id, regs->rdi, regs->rsi, regs->rdx, regs->rcx, regs->r8);

   return (DTRACE_INVOP_NOP);
  }
 }

 return (0);
}
