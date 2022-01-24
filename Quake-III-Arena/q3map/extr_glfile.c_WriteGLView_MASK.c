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
struct TYPE_3__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* c_glfaces ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 char* outbase ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 

void FUNC6 (tree_t *tree, char *source)
{
	char	name[1024];
	FILE	*glview;

	c_glfaces = 0;
	FUNC5 (name, "%s%s.gl",outbase, source);
	FUNC2 ("Writing %s\n", name);

	glview = FUNC4 (name, "w");
	if (!glview)
		FUNC0 ("Couldn't open %s", name);
	FUNC1 (tree->headnode, glview);
	FUNC3 (glview);

	FUNC2 ("%5i c_glfaces\n", c_glfaces);
}