#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef  TYPE_1__ th_triangle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(char *filename)
{
	th_triangle_t *triangles, *tri, *lasttri;
	int cnt;

	if (!FUNC0(filename, 0, 0))
		FUNC1("couldn't load %s\n", filename);

	//
	FUNC5();
	//create a triangle mesh from the solid faces in the AAS file
	triangles = FUNC3();
	//
	cnt = 0;
	lasttri = NULL;
	for (tri = triangles; tri; tri = tri->next)
	{
		cnt++;
		if (tri->prev != lasttri) FUNC2("BAH\n");
		lasttri = tri;
	} //end for
	FUNC2("%6d triangles\n", cnt);
	//create a tetrahedral decomposition of the world bounded by triangles
	FUNC6(triangles);
	//
	FUNC4();
}