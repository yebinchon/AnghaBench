#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {int type; int flags; int /*<<< orphan*/  name; TYPE_1__* def; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  tri; } ;

/* Variables and functions */
#define  S_BOOLEAN 133 
 int S_DEF_AUTO ; 
#define  S_HEX 132 
#define  S_INT 131 
#define  S_OTHER 130 
#define  S_STRING 129 
#define  S_TRISTATE 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mod ; 
 int /*<<< orphan*/  no ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,char*) ; 
 int /*<<< orphan*/  yes ; 

__attribute__((used)) static int FUNC7(struct symbol *sym, int def, int def_flags, char *p)
{
	char *p2;

	switch (sym->type) {
	case S_TRISTATE:
		if (p[0] == 'm') {
			sym->def[def].tri = mod;
			sym->flags |= def_flags;
			break;
		}
		/* fall through */
	case S_BOOLEAN:
		if (p[0] == 'y') {
			sym->def[def].tri = yes;
			sym->flags |= def_flags;
			break;
		}
		if (p[0] == 'n' || p[0] == '\0') {
			sym->def[def].tri = no;
			sym->flags |= def_flags;
			break;
		}
		if (def != S_DEF_AUTO)
			FUNC0("symbol value '%s' invalid for %s",
				     p, sym->name);
		return 1;
	case S_OTHER:
		if (*p != '"') {
			for (p2 = p; *p2 && !FUNC1(*p2); p2++)
				;
			sym->type = S_STRING;
			goto done;
		}
		/* fall through */
	case S_STRING:
		if (*p++ != '"')
			break;
		for (p2 = p; (p2 = FUNC5(p2, "\"\\")); p2++) {
			if (*p2 == '"') {
				*p2 = 0;
				break;
			}
			FUNC2(p2, p2 + 1, FUNC4(p2));
		}
		if (!p2) {
			if (def != S_DEF_AUTO)
				FUNC0("invalid string found");
			return 1;
		}
		/* fall through */
	case S_INT:
	case S_HEX:
	done:
		if (FUNC6(sym, p)) {
			sym->def[def].val = FUNC3(p);
			sym->flags |= def_flags;
		} else {
			if (def != S_DEF_AUTO)
				FUNC0("symbol value '%s' invalid for %s",
					     p, sym->name);
			return 1;
		}
		break;
	default:
		;
	}
	return 0;
}