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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path_stat ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int64_t FUNC3(const char *path)
{
    struct stat path_stat;

    FUNC1(&path_stat, 0, sizeof(path_stat));
    if (FUNC2(path, &path_stat) == 0)
    {
        /* Stat returns size taken up by directory entry, so return 0 */
        if (FUNC0(path_stat.st_mode))
            return 0;

        return path_stat.st_size;
    }

    return 0;
}