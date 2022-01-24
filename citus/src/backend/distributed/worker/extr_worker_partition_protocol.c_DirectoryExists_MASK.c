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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 

bool
FUNC6(StringInfo directoryName)
{
	bool directoryExists = true;
	struct stat directoryStat;

	int statOK = FUNC5(directoryName->data, &directoryStat);
	if (statOK == 0)
	{
		/* file already exists; just assert that it is a directory */
		FUNC0(FUNC1(directoryStat.st_mode));
	}
	else
	{
		if (errno == ENOENT)
		{
			directoryExists = false;
		}
		else
		{
			FUNC2(ERROR, (FUNC3(),
							FUNC4("could not stat directory \"%s\": %m",
								   directoryName->data)));
		}
	}

	return directoryExists;
}