#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int addr; } ;
typedef  TYPE_1__ symtable_rec ;
typedef  int UWORD ;
struct TYPE_5__ {int addr; char* name; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int*) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ symtable_builtin_enable ; 
 TYPE_2__* symtable_user ; 
 int symtable_user_size ; 

__attribute__((used)) static void FUNC10(UWORD *addr)
{
	char *cmd = FUNC5();
	if (cmd == NULL) {
		FUNC8("Built-in labels are %sabled.\n", symtable_builtin_enable ? "en" : "dis");
		if (symtable_user_size > 0)
			FUNC8("Using %d user-defined label%s.\n",
				symtable_user_size, (symtable_user_size > 1) ? "s" : "");
		else
			FUNC8("There are no user-defined labels.\n");
		FUNC8(
			"Labels are displayed in disassembly listings.\n"
			"You may also use them as command arguments"
#ifdef MONITOR_ASSEMBLER
				" and in the built-in assembler"
#endif
				".\n"
			"Usage:\n"
			"LABELS OFF            - no labels\n"
			"LABELS BUILTIN        - use only built-in labels\n"
			"LABELS LOAD filename  - use only labels loaded from file\n"
			"LABELS ADD filename   - use built-in and loaded labels\n"
			"LABELS SET name value - define a label\n"
			"LABELS LIST           - list user-defined labels\n"
		);
	}
	else {
		FUNC0(cmd);
		if (FUNC9(cmd, "OFF") == 0) {
			symtable_builtin_enable = FALSE;
			FUNC3();
		}
		else if (FUNC9(cmd, "BUILTIN") == 0) {
			symtable_builtin_enable = TRUE;
			FUNC3();
		}
		else if (FUNC9(cmd, "LOAD") == 0) {
			symtable_builtin_enable = FALSE;
			FUNC6(FUNC5());
		}
		else if (FUNC9(cmd, "ADD") == 0) {
			symtable_builtin_enable = TRUE;
			FUNC6(FUNC5());
		}
		else if (FUNC9(cmd, "SET") == 0) {
			const char *name = FUNC5();
			if (name != NULL && FUNC4(addr)) {
				symtable_rec *p = FUNC2(name);
				if (p != NULL) {
					if (p->addr != *addr) {
						FUNC8("%s redefined (previous value: %04X)\n", name, p->addr);
						p->addr = *addr;
					}
				}
				else
					FUNC1(name, *addr);
			}
			else
				FUNC8("Missing or bad arguments\n");
		}
		else if (FUNC9(cmd, "LIST") == 0) {
			int i;
			int nlines = 0;
			for (i = 0; i < symtable_user_size; i++) {
				if (++nlines == 24) {
					if (FUNC7())
						break;
					nlines = 0;
				}
				FUNC8("%04X %s\n", symtable_user[i].addr, symtable_user[i].name);
			}
		}
		else
			FUNC8("Invalid command, type \"LABELS\" for help\n");
	}
}