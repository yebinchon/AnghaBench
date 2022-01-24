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
typedef  int /*<<< orphan*/  _path ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENAMETOOLONG ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  S_IRWXU ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const) ; 
 size_t FUNC2 (char const* const) ; 

int
FUNC3(const char* const path)
{
    /* Adapted from http://stackoverflow.com/a/2336245/119527 */
    const size_t len = FUNC2(path);
    char _path[PATH_MAX];
    char *p;

    errno = 0;

    /* Copy string so its mutable */
    if (len > sizeof(_path)-1) {
        errno = ENAMETOOLONG;
        return -1;
    }
    FUNC1(_path, path);

    /* Iterate the string */
    for (p = _path + 1; *p; p++) {
        if (*p == '/') {
            /* Temporarily truncate */
            *p = '\0';

            if (FUNC0(_path, S_IRWXU) != 0) {
                if (errno != EEXIST)
                    return -1;
            }

            *p = '/';
        }
    }

    if (FUNC0(_path, S_IRWXU) != 0) {
        if (errno != EEXIST)
            return -1;
    }

    return 0;
}