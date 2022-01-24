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

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int did_prof_dump_open ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(bool propagate_err, const char *filename)
{
	int fd;

	did_prof_dump_open = true;

	fd = FUNC1("/dev/null", O_WRONLY);
	FUNC0(fd, -1, "Unexpected open() failure");

	return (fd);
}