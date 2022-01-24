#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_7__ {int len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  FileCompat ;
typedef  int /*<<< orphan*/  File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int const,int const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  PG_WAIT_IO ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(const char *filename)
{
	StringInfo fileBuffer = NULL;
	int readBytes = -1;
	const uint32 fileBufferSize = 32768; /* 32 KB */
	const int fileFlags = (O_RDONLY | PG_BINARY);
	const int fileMode = 0;

	/* we currently do not check if the caller has permissions for this file */
	File fileDesc = FUNC2(filename, fileFlags, fileMode);
	FileCompat fileCompat = FUNC1(fileDesc);

	/*
	 * We read file's contents into buffers of 32 KB. This buffer size is twice
	 * as large as Hadoop's default buffer size, and may later be configurable.
	 */
	fileBuffer = FUNC9();
	FUNC8(fileBuffer, fileBufferSize);

	FUNC7();

	readBytes = FUNC3(&fileCompat, fileBuffer->data, fileBufferSize,
							   PG_WAIT_IO);
	while (readBytes > 0)
	{
		fileBuffer->len = readBytes;

		FUNC5(fileBuffer);

		FUNC10(fileBuffer);
		readBytes = FUNC3(&fileCompat, fileBuffer->data, fileBufferSize,
								   PG_WAIT_IO);
	}

	FUNC6();

	FUNC4(fileBuffer);
	FUNC0(fileDesc);
}