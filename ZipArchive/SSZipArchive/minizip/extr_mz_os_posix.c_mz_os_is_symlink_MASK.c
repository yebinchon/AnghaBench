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
typedef  int /*<<< orphan*/  path_stat ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_EXIST_ERROR ; 
 int /*<<< orphan*/  MZ_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 

int32_t FUNC3(const char *path)
{
    struct stat path_stat;

    FUNC2(&path_stat, 0, sizeof(path_stat));
    FUNC1(path, &path_stat);
    if (FUNC0(path_stat.st_mode))
        return MZ_OK;

    return MZ_EXIST_ERROR;
}