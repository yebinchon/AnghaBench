#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  entity_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  nobrushmerge ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(entity_t *mapent, int modelnum)
{
	bspbrush_t *brushlist, *brush, *nextbrush;
	int i;

	//create brushes from the model BSP tree
	brushlist = FUNC2(modelnum);
	//texture the brushes and split them when necesary
	brushlist = FUNC5(brushlist, modelnum);
	//fix the contents textures of all brushes
	FUNC3(brushlist);
	//
	if (!nobrushmerge)
	{
		brushlist = FUNC4(brushlist, modelnum);
		//brushlist = Q1_MergeBrushes(brushlist, modelnum);
	} //end if
	//
	if (!modelnum) FUNC6("converting brushes to map brushes\n");
	if (!modelnum) FUNC6("%5d brushes", i = 0);
	for (brush = brushlist; brush; brush = nextbrush)
	{
		nextbrush = brush->next;
		FUNC1(brush, mapent);
		brush->next = NULL;
		FUNC0(brush);
		if (!modelnum) FUNC6("\r%5d", ++i);
	} //end for
	if (!modelnum) FUNC6("\n");
}