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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  MZ_PATH_SLASH_PLATFORM ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,scalar_t__) ; 

int32_t FUNC4(char *path, const char *join, int32_t max_path)
{
    int32_t path_len = 0;

    if (path == NULL || join == NULL || max_path == 0)
        return MZ_PARAM_ERROR;

    path_len = (int32_t)FUNC1(path);

    if (path_len == 0)
    {
        FUNC3(path, join, max_path - 1);
        path[max_path - 1] = 0;
    }
    else
    {
        FUNC0(path, max_path, MZ_PATH_SLASH_PLATFORM);
        FUNC2(path, join, max_path - path_len);
    }

    return MZ_OK;
}