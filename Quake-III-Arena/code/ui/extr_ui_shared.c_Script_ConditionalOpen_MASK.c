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
typedef  int /*<<< orphan*/  itemDef_t ;
struct TYPE_2__ {float (* getCVarValue ) (char const*) ;} ;

/* Variables and functions */
 TYPE_1__* DC ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char**,char const**) ; 
 float FUNC2 (char const*) ; 

void FUNC3(itemDef_t *item, char **args) {
	const char *cvar;
	const char *name1;
	const char *name2;
	float           val;

	if ( FUNC1(args, &cvar) && FUNC1(args, &name1) && FUNC1(args, &name2) ) {
		val = DC->getCVarValue( cvar );
		if ( val == 0.f ) {
			FUNC0(name2);
		} else {
			FUNC0(name1);
		}
	}
}