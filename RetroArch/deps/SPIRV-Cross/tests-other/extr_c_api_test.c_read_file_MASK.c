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
typedef  int /*<<< orphan*/  SpvId ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const char *path, SpvId **buffer, size_t *word_count)
{
	long len;
	FILE *file = FUNC1(path, "rb");

	if (!file)
		return -1;

	FUNC4(file, 0, SEEK_END);
	len = FUNC5(file);
	FUNC7(file);

	*buffer = FUNC6(len);
	if (FUNC2(*buffer, 1, len, file) != (size_t)len)
	{
		FUNC0(file);
		FUNC3(*buffer);
		return -1;
	}

	FUNC0(file);
	*word_count = len / sizeof(SpvId);
	return 0;
}