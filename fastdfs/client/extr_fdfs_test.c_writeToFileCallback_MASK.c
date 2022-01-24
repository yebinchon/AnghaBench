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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*,int const,int,int /*<<< orphan*/ *) ; 

int FUNC1(void *arg, const int64_t file_size, const char *data, \
                const int current_size)
{
	if (arg == NULL)
	{
		return EINVAL;
	}

	if (FUNC0(data, current_size, 1, (FILE *)arg) != 1)
	{
		return errno != 0 ? errno : EIO;
	}

	return 0;
}