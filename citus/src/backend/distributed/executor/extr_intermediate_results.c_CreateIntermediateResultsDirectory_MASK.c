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

/* Variables and functions */
 int CreatedResultsDirectory ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(void)
{
	char *resultDirectory = FUNC0();
	int makeOK = 0;

	if (!CreatedResultsDirectory)
	{
		makeOK = FUNC4(resultDirectory, S_IRWXU);
		if (makeOK != 0)
		{
			if (errno == EEXIST)
			{
				/* someone else beat us to it, that's ok */
				return resultDirectory;
			}

			FUNC1(ERROR, (FUNC2(),
							FUNC3("could not create intermediate results directory "
								   "\"%s\": %m",
								   resultDirectory)));
		}

		CreatedResultsDirectory = true;
	}

	return resultDirectory;
}