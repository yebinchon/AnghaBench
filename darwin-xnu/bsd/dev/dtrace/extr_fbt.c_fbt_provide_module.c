
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modctl {int mod_flags; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_NEVER ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED ;
 int MODCTL_FBT_INVALID ;
 int MODCTL_FBT_PRIVATE_PROBES_PROVIDED ;
 int MODCTL_FBT_PROBES_PROVIDED ;
 int MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES ;
 scalar_t__ MOD_FBT_DONE (struct modctl*) ;
 scalar_t__ MOD_FBT_PROVIDE_BLACKLISTED_PROBES (struct modctl*) ;
 scalar_t__ MOD_FBT_PROVIDE_PRIVATE_PROBES (struct modctl*) ;
 scalar_t__ MOD_HAS_KERNEL_SYMBOLS (struct modctl*) ;
 scalar_t__ MOD_HAS_USERSPACE_SYMBOLS (struct modctl*) ;
 scalar_t__ dtrace_kernel_symbol_mode ;
 scalar_t__ fbt_module_excluded (struct modctl*) ;
 int fbt_provide_module_kernel_syms (struct modctl*) ;
 int fbt_provide_module_user_syms (struct modctl*) ;
 scalar_t__ ignore_fbt_blacklist ;
 int mod_lock ;

void
fbt_provide_module(void *arg, struct modctl *ctl)
{
#pragma unused(arg)
 ASSERT(ctl != ((void*)0));
 ASSERT(dtrace_kernel_symbol_mode != DTRACE_KERNEL_SYMBOLS_NEVER);
 LCK_MTX_ASSERT(&mod_lock, LCK_MTX_ASSERT_OWNED);


 if (ignore_fbt_blacklist)
  ctl->mod_flags |= MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES;

 if (MOD_FBT_DONE(ctl))
  return;

 if (fbt_module_excluded(ctl)) {
  ctl->mod_flags |= MODCTL_FBT_INVALID;
  return;
 }

 if (MOD_HAS_KERNEL_SYMBOLS(ctl)) {
  fbt_provide_module_kernel_syms(ctl);
  ctl->mod_flags |= MODCTL_FBT_PROBES_PROVIDED;
  if (MOD_FBT_PROVIDE_BLACKLISTED_PROBES(ctl))
   ctl->mod_flags |= MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED;
  return;
 }

 if (MOD_HAS_USERSPACE_SYMBOLS(ctl)) {
  fbt_provide_module_user_syms(ctl);
  ctl->mod_flags |= MODCTL_FBT_PROBES_PROVIDED;
  if (MOD_FBT_PROVIDE_PRIVATE_PROBES(ctl))
   ctl->mod_flags |= MODCTL_FBT_PRIVATE_PROBES_PROVIDED;
  if (MOD_FBT_PROVIDE_BLACKLISTED_PROBES(ctl))
   ctl->mod_flags |= MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED;
  return;
 }
}
