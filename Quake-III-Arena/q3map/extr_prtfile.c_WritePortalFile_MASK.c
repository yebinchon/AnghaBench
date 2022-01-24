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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int num_solidfaces ; 
 int num_visclusters ; 
 int num_visportals ; 
 int /*<<< orphan*/  pf ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* source ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 

void FUNC9 (tree_t *tree)
{
	char	filename[1024];

	FUNC7 ("--- WritePortalFile ---\n");
	
	// write the file
	FUNC8 (filename, "%s.prt", source);
	FUNC3 ("writing %s\n", filename);
	pf = FUNC5 (filename, "w");
	if (!pf)
		FUNC0 ("Error opening %s", filename);
		
	FUNC6 (pf, "%s\n", PORTALFILE);
	FUNC6 (pf, "%i\n", num_visclusters);
	FUNC6 (pf, "%i\n", num_visportals);
	FUNC6 (pf, "%i\n", num_solidfaces);

	FUNC2(tree->headnode);
	FUNC1(tree->headnode);

	FUNC4 (pf);
}