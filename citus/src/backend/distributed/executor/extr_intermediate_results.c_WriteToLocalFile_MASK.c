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
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  FileCompat ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_WAIT_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(StringInfo copyData, FileCompat *fileCompat)
{
	int bytesWritten = FUNC0(fileCompat, copyData->data,
									   copyData->len,
									   PG_WAIT_IO);
	if (bytesWritten < 0)
	{
		FUNC1(ERROR, (FUNC2(),
						FUNC3("could not append to file: %m")));
	}
}