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
typedef  int /*<<< orphan*/  entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_SWITCHED_LIGHTS ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * entities ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

void FUNC7 (void)
{
	int		stylenum;
	const char	*t;
	entity_t	*e;
	int		i, j;
	char	value[10];
	char	lighttargets[MAX_SWITCHED_LIGHTS][64];


	// any light that is controlled (has a targetname)
	// must have a unique style number generated for it

	stylenum = 0;
	for (i=1 ; i<num_entities ; i++)
	{
		e = &entities[i];

		t = FUNC3 (e, "classname");
		if (FUNC1 (t, "light", 5))
			continue;
		t = FUNC3 (e, "targetname");
		if (!t[0])
			continue;
		
		// find this targetname
		for (j=0 ; j<stylenum ; j++)
			if (!FUNC5 (lighttargets[j], t))
				break;
		if (j == stylenum)
		{
			if (stylenum == MAX_SWITCHED_LIGHTS)
				FUNC0 ("stylenum == MAX_SWITCHED_LIGHTS");
			FUNC6 (lighttargets[j], t);
			stylenum++;
		}
		FUNC4 (value, "%i", 32 + j);
		FUNC2 (e, "style", value);
	}

}