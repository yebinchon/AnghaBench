#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ YuiRangeItem ;
struct TYPE_6__ {char* Name; int id; } ;
typedef  TYPE_2__ GenericInterface_struct ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 void* FUNC2 (char*) ; 

void FUNC3(void * pointer, YuiRangeItem ** items) {
	GenericInterface_struct ** cores;
	GenericInterface_struct * core;
	int i;

	if (*items != NULL) return;

	cores = pointer;

	i = 0;
	core = cores[i];
	while(core) {
		i++;
		core = cores[i];
	}
	*items = FUNC0(sizeof(YuiRangeItem) * (i + 1));
	i = 0;
	core = cores[i];
	while(core) {
		char buffer[1024];
		(*items)[i].name = FUNC2(core->Name);
		FUNC1(buffer, "%d", core->id);
		(*items)[i].value = FUNC2(buffer);
		i++;
		core = cores[i];
	}
	(*items)[i].name = NULL;
	(*items)[i].value = NULL;
}