#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  script_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int SCFL_NOSTRINGESCAPECHARS ; 
 int SCFL_NOSTRINGWHITESPACES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ num_entities ; 
 int /*<<< orphan*/  sin_dentdata ; 
 int /*<<< orphan*/  sin_entdatasize ; 

void FUNC4 (void)
{
	script_t *script;

	num_entities = 0;
	script = FUNC1(sin_dentdata, sin_entdatasize, "*sin bsp file");
	FUNC3(script, SCFL_NOSTRINGWHITESPACES |
									SCFL_NOSTRINGESCAPECHARS);

	while(FUNC2(script))
	{
	} //end while

	FUNC0(script);
}