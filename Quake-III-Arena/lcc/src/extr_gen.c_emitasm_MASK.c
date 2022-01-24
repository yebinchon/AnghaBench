#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__** kids; scalar_t__ emitted; } ;
struct TYPE_21__ {char** kids; TYPE_13__** syms; TYPE_2__ x; } ;
struct TYPE_20__ {int /*<<< orphan*/  name; } ;
struct TYPE_19__ {short** _nts; char** _templates; int /*<<< orphan*/  (* _kids ) (TYPE_5__*,int,TYPE_5__**) ;int /*<<< orphan*/  (* emit2 ) (TYPE_5__*) ;scalar_t__* _isinstruction; } ;
struct TYPE_17__ {TYPE_13__** syms; } ;
struct TYPE_16__ {TYPE_3__ x; } ;
struct TYPE_15__ {TYPE_4__ x; } ;
typedef  TYPE_5__* Node ;

/* Variables and functions */
 TYPE_14__* IR ; 
 char FUNC0 (TYPE_13__**) ; 
 size_t RX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  framesize ; 
 int FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 TYPE_5__* FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,TYPE_5__**) ; 

__attribute__((used)) static unsigned FUNC9(Node p, int nt) {
	int rulenum;
	short *nts;
	char *fmt;
	Node kids[10];

	p = FUNC6(p, nt);
	rulenum = FUNC3(p, nt);
	nts = IR->x._nts[rulenum];
	fmt = IR->x._templates[rulenum];
	FUNC1(fmt);
	if (IR->x._isinstruction[rulenum] && p->x.emitted)
		FUNC4("%s", p->syms[RX]->x.name);
	else if (*fmt == '#')
		(*IR->x.emit2)(p);
	else {
		if (*fmt == '?') {
			fmt++;
			FUNC1(p->kids[0]);
			if (p->syms[RX] == p->x.kids[0]->syms[RX])
				while (*fmt++ != '\n')
					;
		}
		for ((*IR->x._kids)(p, rulenum, kids); *fmt; fmt++)
			if (*fmt != '%')
				(void)FUNC5(*fmt);
			else if (*++fmt == 'F')
				FUNC4("%d", framesize);
			else if (*fmt >= '0' && *fmt <= '9')
				FUNC9(kids[*fmt - '0'], nts[*fmt - '0']);
			else if (*fmt >= 'a' && *fmt < 'a' + FUNC0(p->syms))
				FUNC2(p->syms[*fmt - 'a']->x.name, stdout);
			else
				(void)FUNC5(*fmt);
	}
	return 0;
}