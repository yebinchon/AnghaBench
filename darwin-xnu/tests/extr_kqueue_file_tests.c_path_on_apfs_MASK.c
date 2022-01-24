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
struct statfs {int /*<<< orphan*/ * f_fstypename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_QUIET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool
FUNC4(const char *path)
{
	struct statfs sfs = {};
	T_QUIET; FUNC0(FUNC2(path, &sfs), NULL);
	return (FUNC1(&sfs.f_fstypename[0], "apfs", FUNC3("apfs")) == 0);
}