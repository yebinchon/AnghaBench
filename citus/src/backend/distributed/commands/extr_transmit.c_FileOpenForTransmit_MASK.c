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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ File ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,struct stat*) ; 

File
FUNC7(const char *filename, int fileFlags, int fileMode)
{
	File fileDesc = -1;
	int fileStated = -1;
	struct stat fileStat;

	fileStated = FUNC6(filename, &fileStat);
	if (fileStated >= 0)
	{
		if (FUNC1(fileStat.st_mode))
		{
			FUNC2(ERROR, (FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
							FUNC5("\"%s\" is a directory", filename)));
		}
	}

	fileDesc = FUNC0((char *) filename, fileFlags, fileMode);
	if (fileDesc < 0)
	{
		FUNC2(ERROR, (FUNC4(),
						FUNC5("could not open file \"%s\": %m", filename)));
	}

	return fileDesc;
}