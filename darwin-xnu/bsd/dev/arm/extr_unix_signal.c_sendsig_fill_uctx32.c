
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ss_flags; void* ss_size; void* ss_sp; } ;
struct TYPE_6__ {int uc_onstack; int uc_sigmask; void* uc_mcontext; void* uc_mcsize; void* uc_link; TYPE_1__ uc_stack; } ;
typedef TYPE_2__ user_ucontext32_t ;
typedef scalar_t__ user_size_t ;
typedef scalar_t__ user_addr_t ;
typedef void* user32_size_t ;
typedef void* user32_addr_t ;


 int SS_ONSTACK ;
 scalar_t__ UC_FLAVOR_SIZE32 ;
 int bzero (TYPE_2__*,int) ;

__attribute__((used)) static void
sendsig_fill_uctx32(user_ucontext32_t *uctx, int oonstack, int mask, user_addr_t sp, user_size_t stack_size, user_addr_t p_mctx)
{
 bzero(uctx, sizeof(*uctx));
 uctx->uc_onstack = oonstack;
 uctx->uc_sigmask = mask;
 uctx->uc_stack.ss_sp = (user32_addr_t) sp;
 uctx->uc_stack.ss_size = (user32_size_t) stack_size;
 if (oonstack)
  uctx->uc_stack.ss_flags |= SS_ONSTACK;
 uctx->uc_link = (user32_addr_t)0;
 uctx->uc_mcsize = (user32_size_t) UC_FLAVOR_SIZE32;
 uctx->uc_mcontext = (user32_addr_t) p_mctx;
}
