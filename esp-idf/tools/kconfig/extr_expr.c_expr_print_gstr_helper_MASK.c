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
struct symbol {scalar_t__ type; } ;
struct gstr {unsigned int max_width; char* s; } ;

/* Variables and functions */
 scalar_t__ S_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct gstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gstr*,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (struct symbol*) ; 

__attribute__((used)) static void FUNC5(void *data, struct symbol *sym, const char *str)
{
	struct gstr *gs = (struct gstr*)data;
	const char *sym_str = NULL;

	if (sym)
		sym_str = FUNC4(sym);

	if (gs->max_width) {
		unsigned extra_length = FUNC2(str);
		const char *last_cr = FUNC3(gs->s, '\n');
		unsigned last_line_length;

		if (sym_str)
			extra_length += 4 + FUNC2(sym_str);

		if (!last_cr)
			last_cr = gs->s;

		last_line_length = FUNC2(gs->s) - (last_cr - gs->s);

		if ((last_line_length + extra_length) > gs->max_width)
			FUNC0(gs, "\\\n");
	}

	FUNC0(gs, str);
	if (sym && sym->type != S_UNKNOWN)
		FUNC1(gs, " [=%s]", sym_str);
}