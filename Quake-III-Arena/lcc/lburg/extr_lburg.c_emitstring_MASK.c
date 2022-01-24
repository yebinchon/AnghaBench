#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* template; int /*<<< orphan*/  ern; struct TYPE_3__* link; } ;
typedef  TYPE_1__* Rule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(Rule rules) {
	Rule r;

	FUNC0("static char *%Ptemplates[] = {\n");
	FUNC0("/* 0 */%10,\n");
	for (r = rules; r; r = r->link)
		FUNC0("/* %d */%1\"%s\",%1/* %R */\n", r->ern, r->template, r);
	FUNC0("};\n");
	FUNC0("\nstatic char %Pisinstruction[] = {\n");
	FUNC0("/* 0 */%10,\n");
	for (r = rules; r; r = r->link) {
		int len = FUNC1(r->template);
		FUNC0("/* %d */%1%d,%1/* %s */\n", r->ern,
			len >= 2 && r->template[len-2] == '\\' && r->template[len-1] == 'n',
			r->template);
	}
	FUNC0("};\n");
	FUNC0("\nstatic char *%Pstring[] = {\n");
	FUNC0("/* 0 */%10,\n");
	for (r = rules; r; r = r->link)
		FUNC0("/* %d */%1\"%R\",\n", r->ern, r);
	FUNC0("};\n\n");
}