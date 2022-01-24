#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  filePath; int /*<<< orphan*/  fileBuffer; TYPE_1__ fileCompat; } ;
typedef  TYPE_2__ FileOutputStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(FileOutputStream *partitionFileArray, uint32 fileCount)
{
	uint32 fileIndex = 0;
	for (fileIndex = 0; fileIndex < fileCount; fileIndex++)
	{
		FileOutputStream *partitionFile = &partitionFileArray[fileIndex];

		FUNC1(partitionFile);

		FUNC0(partitionFile->fileCompat.fd);
		FUNC2(partitionFile->fileBuffer);
		FUNC2(partitionFile->filePath);
	}

	FUNC3(partitionFileArray);
}