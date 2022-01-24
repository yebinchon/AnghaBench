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
typedef  scalar_t__ int32 ;

/* Variables and functions */
 scalar_t__ INVALID_CONNECTION_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(int32 connectionId, const char *filename, int32 fileDescriptor)
{
	if (connectionId != INVALID_CONNECTION_ID)
	{
		FUNC0(connectionId);
	}

	if (fileDescriptor != -1)
	{
		int closed = -1;
		int deleted = -1;

		closed = FUNC1(fileDescriptor);
		if (closed < 0)
		{
			FUNC2(WARNING, (FUNC3(),
							  FUNC4("could not close file \"%s\": %m", filename)));
		}

		deleted = FUNC5(filename);
		if (deleted != 0)
		{
			FUNC2(WARNING, (FUNC3(),
							  FUNC4("could not delete file \"%s\": %m", filename)));
		}
	}
}