#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_13__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_10__* Type ;
struct TYPE_32__ {TYPE_8__* sym; } ;
struct TYPE_30__ {int /*<<< orphan*/  idlist; } ;
struct TYPE_31__ {int defined; TYPE_7__ u; } ;
struct TYPE_29__ {long value; } ;
struct TYPE_28__ {TYPE_4__* sym; } ;
struct TYPE_24__ {long i; } ;
struct TYPE_25__ {TYPE_1__ max; } ;
struct TYPE_26__ {TYPE_2__ limits; } ;
struct TYPE_27__ {TYPE_3__ u; } ;
struct TYPE_23__ {int /*<<< orphan*/  align; int /*<<< orphan*/  size; TYPE_5__ u; } ;
struct TYPE_22__ {scalar_t__ scope; char src; } ;
struct TYPE_21__ {TYPE_10__* type; TYPE_6__ u; scalar_t__ sclass; int /*<<< orphan*/  src; } ;
struct TYPE_20__ {scalar_t__ op; TYPE_16__* type; TYPE_9__ u; int /*<<< orphan*/  align; int /*<<< orphan*/  size; } ;
typedef  TYPE_11__* Symbol ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Coordinate ;

/* Variables and functions */
 int Aflag ; 
 scalar_t__ ENUM ; 
 int /*<<< orphan*/  FUNC ; 
 char ID ; 
#define  IF 128 
 scalar_t__ LOCAL ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  identifiers ; 
 TYPE_11__* FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_16__* inttype ; 
 scalar_t__ level ; 
 TYPE_11__* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  src ; 
 char t ; 
 int /*<<< orphan*/  FUNC8 (char,char*) ; 
 char* token ; 
 TYPE_13__* tsym ; 
 int /*<<< orphan*/  types ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ xref ; 

Type FUNC11(void) {
	char *tag;
	Type ty;
	Symbol p;
	Coordinate pos;

	t = FUNC2();
	pos = src;
	if (t == ID) {
		tag = token;
		t = FUNC2();
	} else
		tag = "";
	if (t == '{') {
		static char follow[] = { IF, 0 };
		int n = 0;
		long k = -1;
		List idlist = 0;
		ty = FUNC7(ENUM, tag);
		t = FUNC2();
		if (t != ID)
			FUNC1("expecting an enumerator identifier\n");
		while (t == ID) {
			char *id = token;
			Coordinate s;
			if (tsym && tsym->scope == level)
				FUNC1("redeclaration of `%s' previously declared at %w\n",
					token, &tsym->src);
			s = src;
			t = FUNC2();
			if (t == '=') {
				t = FUNC2();
				k = FUNC4(0, 0);
			} else {
				if (k == inttype->u.sym->u.limits.max.i)
					FUNC1("overflow in value for enumeration constant `%s'\n", id);
				k++;
			}
			p = FUNC3(id, &identifiers, level,  level < LOCAL ? PERM : FUNC);
			p->src = s;
			p->type = ty;
			p->sclass = ENUM;
			p->u.value = k;
			idlist = FUNC0(p, idlist);
			n++;
			if (Aflag >= 2 && n == 128)
				FUNC10("more than 127 enumeration constants in `%t'\n", ty);
			if (t != ',')
				break;
			t = FUNC2();
			if (Aflag >= 2 && t == '}')
				FUNC10("non-ANSI trailing comma in enumerator list\n");
		}
		FUNC8('}', follow);
		ty->type = inttype;
		ty->size = ty->type->size;
		ty->align = ty->type->align;
		ty->u.sym->u.idlist = FUNC6(&idlist, PERM);
		ty->u.sym->defined = 1;
	} else if ((p = FUNC5(tag, types)) != NULL && p->type->op == ENUM) {
		ty = p->type;
		if (t == ';')
			FUNC1("empty declaration\n");
	} else {
		FUNC1("unknown enumeration `%s'\n",  tag);
		ty = FUNC7(ENUM, tag);
		ty->type = inttype;
	}
	if (*tag && xref)
		FUNC9(p, pos);
	return ty;
}