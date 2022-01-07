
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct modctl {char* mod_modname; TYPE_2__* mod_user_symbols; } ;
typedef int machine_inst_t ;
struct TYPE_3__ {char* dtsym_name; scalar_t__ dtsym_size; scalar_t__ dtsym_addr; } ;
typedef TYPE_1__ dtrace_symbol_t ;
struct TYPE_4__ {unsigned int dtmodsyms_count; TYPE_1__* dtmodsyms_symbols; } ;
typedef TYPE_2__ dtrace_module_symbols_t ;


 scalar_t__ MOD_IS_MACH_KERNEL (struct modctl*) ;
 int dtrace_addr_in_module (void*,struct modctl*) ;
 scalar_t__ fbt_excluded (char*) ;
 int fbt_provide_probe (struct modctl*,char*,char*,int *,int *) ;

__attribute__((used)) static void
fbt_provide_module_user_syms(struct modctl *ctl)
{
 unsigned int i;
 char *modname = ctl->mod_modname;

 dtrace_module_symbols_t* module_symbols = ctl->mod_user_symbols;
 if (module_symbols) {
  for (i=0; i<module_symbols->dtmodsyms_count; i++) {





   dtrace_symbol_t* symbol = &module_symbols->dtmodsyms_symbols[i];

   char* name = symbol->dtsym_name;


   if (*name == '_')
    name += 1;

   if (MOD_IS_MACH_KERNEL(ctl) && fbt_excluded(name))
    continue;




   if (!symbol->dtsym_addr)
    continue;




   if (!dtrace_addr_in_module((void*)symbol->dtsym_addr, ctl))
    continue;

   fbt_provide_probe(ctl, modname, name, (machine_inst_t*)(uintptr_t)symbol->dtsym_addr, (machine_inst_t*)(uintptr_t)(symbol->dtsym_addr + symbol->dtsym_size));
  }
 }
}
