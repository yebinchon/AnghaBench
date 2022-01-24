#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct utsname {int /*<<< orphan*/  release; } ;
struct symbol {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYMBOL_AUTO ; 
 int /*<<< orphan*/  S_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct utsname*) ; 

void FUNC3(void)
{
	struct symbol *sym;
	struct utsname uts;
	static bool inited = false;

	if (inited)
		return;
	inited = true;

	FUNC2(&uts);

	sym = FUNC1("UNAME_RELEASE", 0);
	sym->type = S_STRING;
	sym->flags |= SYMBOL_AUTO;
	FUNC0(sym, uts.release);
}