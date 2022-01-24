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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char const*,int) ; 
 int FUNC5 (char const*,struct stat*) ; 

void
FUNC6(const char * filepath)
{
	struct stat f_stat;
	int ret = 0;
	errno   = 0;
	ret = FUNC5(filepath, &f_stat);
	if (ret == 0) {
		/* if file exists, make sure its a fifo */
		FUNC3(FUNC0(f_stat.st_mode), "ensure %s is a fifo", filepath);
	} else if (errno == ENOENT) {
		ret = FUNC4(filepath, 0777);
		FUNC2(ret, "creating a fifo at path %s", filepath);
	} else {
		FUNC1("stat operation on %s", filepath);
	}
}