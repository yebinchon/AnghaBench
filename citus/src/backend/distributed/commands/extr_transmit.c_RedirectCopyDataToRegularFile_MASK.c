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
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  FileCompat ;
typedef  int /*<<< orphan*/  File ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int const,int const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  PG_WAIT_IO ; 
 int FUNC5 (TYPE_1__*) ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void
FUNC12(const char *filename)
{
	StringInfo copyData = FUNC10();
	bool copyDone = false;
	const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
	const int fileMode = (S_IRUSR | S_IWUSR);
	File fileDesc = FUNC2(filename, fileFlags, fileMode);
	FileCompat fileCompat = FUNC1(fileDesc);

	FUNC6();

	copyDone = FUNC5(copyData);
	while (!copyDone)
	{
		/* if received data has contents, append to regular file */
		if (copyData->len > 0)
		{
			int appended = FUNC3(&fileCompat, copyData->data,
										   copyData->len, PG_WAIT_IO);

			if (appended != copyData->len)
			{
				FUNC7(ERROR, (FUNC8(),
								FUNC9("could not append to received file: %m")));
			}
		}

		FUNC11(copyData);
		copyDone = FUNC5(copyData);
	}

	FUNC4(copyData);
	FUNC0(fileDesc);
}