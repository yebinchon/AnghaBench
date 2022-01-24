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
typedef  int /*<<< orphan*/  uint32_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  path_stat ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MZ_OK ; 
 int FUNC0 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*,int /*<<< orphan*/ ,int) ; 

int32_t FUNC2(const char *path, uint32_t *attributes)
{
    struct stat path_stat;
    int32_t err = MZ_OK;

    FUNC1(&path_stat, 0, sizeof(path_stat));
    if (FUNC0(path, &path_stat) == -1)
        err = MZ_INTERNAL_ERROR;
    *attributes = path_stat.st_mode;
    return err;
}