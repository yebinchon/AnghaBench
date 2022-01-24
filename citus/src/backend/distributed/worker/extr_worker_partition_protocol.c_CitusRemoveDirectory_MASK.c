#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct stat) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC10 () ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char const*,struct stat*) ; 
 scalar_t__ FUNC13 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*) ; 

void
FUNC15(StringInfo filename)
{
	struct stat fileStat;
	int removed = 0;

	int fileStated = FUNC12(filename->data, &fileStat);
	if (fileStated < 0)
	{
		if (errno == ENOENT)
		{
			return;  /* if file does not exist, return */
		}
		else
		{
			FUNC7(ERROR, (FUNC8(),
							FUNC9("could not stat file \"%s\": %m", filename->data)));
		}
	}

	/*
	 * If this is a directory, iterate over all its contents and for each
	 * content, recurse into this function. Also, make sure that we do not
	 * recurse into symbolic links.
	 */
	if (FUNC5(fileStat.st_mode) && !FUNC1(filename->data, fileStat))
	{
		const char *directoryName = filename->data;
		struct dirent *directoryEntry = NULL;

		DIR *directory = FUNC0(directoryName);
		if (directory == NULL)
		{
			FUNC7(ERROR, (FUNC8(),
							FUNC9("could not open directory \"%s\": %m",
								   directoryName)));
		}

		directoryEntry = FUNC4(directory, directoryName);
		for (; directoryEntry != NULL; directoryEntry = FUNC4(directory, directoryName))
		{
			const char *baseFilename = directoryEntry->d_name;
			StringInfo fullFilename = NULL;

			/* if system file, skip it */
			if (FUNC13(baseFilename, ".", MAXPGPATH) == 0 ||
				FUNC13(baseFilename, "..", MAXPGPATH) == 0)
			{
				continue;
			}

			fullFilename = FUNC10();
			FUNC6(fullFilename, "%s/%s", directoryName, baseFilename);

			FUNC15(fullFilename);

			FUNC3(fullFilename);
		}

		FUNC2(directory);
	}

	/* we now have an empty directory or a regular file, remove it */
	if (FUNC5(fileStat.st_mode))
	{
		removed = FUNC11(filename->data);
	}
	else
	{
		removed = FUNC14(filename->data);
	}

	if (removed != 0)
	{
		FUNC7(ERROR, (FUNC8(),
						FUNC9("could not remove file \"%s\": %m", filename->data)));
	}
}