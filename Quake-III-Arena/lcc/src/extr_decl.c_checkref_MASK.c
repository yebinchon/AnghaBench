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
struct TYPE_3__ {scalar_t__ scope; int addressed; double ref; scalar_t__ sclass; char* name; int /*<<< orphan*/  type; scalar_t__ defined; } ;
typedef  TYPE_1__* Symbol ;

/* Variables and functions */
 scalar_t__ AUTO ; 
 int Aflag ; 
 scalar_t__ EXTERN ; 
 scalar_t__ GLOBAL ; 
 scalar_t__ LOCAL ; 
 scalar_t__ PARAM ; 
 scalar_t__ REGISTER ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ level ; 
 scalar_t__ regcount ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(Symbol p, void *cl) {
	if (p->scope >= PARAM
	&& (FUNC4(p->type) || FUNC2(p->type)))
		p->addressed = 1;
	if (Aflag >= 2 && p->defined && p->ref == 0) {
		if (p->sclass == STATIC)
			FUNC5("static `%t %s' is not referenced\n",
				p->type, p->name);
		else if (p->scope == PARAM)
			FUNC5("parameter `%t %s' is not referenced\n",
				p->type, p->name);
		else if (p->scope >= LOCAL && p->sclass != EXTERN)
			FUNC5("local `%t %s' is not referenced\n",
				p->type, p->name);
	}
	if (p->sclass == AUTO
	&& (p->scope  == PARAM && regcount == 0
	 || p->scope  >= LOCAL)
	&& !p->addressed && FUNC3(p->type) && p->ref >= 3.0)
		p->sclass = REGISTER;
	if (level == GLOBAL && p->sclass == STATIC && !p->defined
	&& FUNC2(p->type) && p->ref)
		FUNC1("undefined static `%t %s'\n", p->type, p->name);
	FUNC0(!(level == GLOBAL && p->sclass == STATIC && !p->defined && !FUNC2(p->type)));
}