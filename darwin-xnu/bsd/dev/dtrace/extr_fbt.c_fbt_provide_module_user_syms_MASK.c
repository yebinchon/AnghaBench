#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct modctl {char* mod_modname; TYPE_2__* mod_user_symbols; } ;
typedef  int /*<<< orphan*/  machine_inst_t ;
struct TYPE_3__ {char* dtsym_name; scalar_t__ dtsym_size; scalar_t__ dtsym_addr; } ;
typedef  TYPE_1__ dtrace_symbol_t ;
struct TYPE_4__ {unsigned int dtmodsyms_count; TYPE_1__* dtmodsyms_symbols; } ;
typedef  TYPE_2__ dtrace_module_symbols_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct modctl*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct modctl*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct modctl*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct modctl *ctl)
{
	unsigned int i;
	char *modname = ctl->mod_modname;

	dtrace_module_symbols_t* module_symbols = ctl->mod_user_symbols;
	if (module_symbols) {
		for (i=0; i<module_symbols->dtmodsyms_count; i++) {

		        /*
			 * symbol->dtsym_addr (the symbol address) passed in from
			 * user space, is already slid for both kexts and kernel.
			 */
			dtrace_symbol_t* symbol = &module_symbols->dtmodsyms_symbols[i];

			char* name = symbol->dtsym_name;

			/* Lop off omnipresent leading underscore. */
			if (*name == '_')
				name += 1;

			if (FUNC0(ctl) && FUNC2(name))
				continue;

			/*
			 * Ignore symbols with a null address
			 */
			if (!symbol->dtsym_addr)
				continue;

			/*
			 * Ignore symbols not part of this module
			 */
			if (!FUNC1((void*)symbol->dtsym_addr, ctl))
				continue;

			FUNC3(ctl, modname, name, (machine_inst_t*)(uintptr_t)symbol->dtsym_addr, (machine_inst_t*)(uintptr_t)(symbol->dtsym_addr + symbol->dtsym_size));
		}
	}
}