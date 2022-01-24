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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  fullpath ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(const char *arg, const char *appimage_path, const char *name)
{
    char option[32];
    FUNC4(option, "appimage-portable-%s", name);

    if (arg && FUNC5(arg, option)==0) {
        char portable_dir[PATH_MAX];
        char fullpath[PATH_MAX];

        ssize_t length = FUNC3(appimage_path, fullpath, sizeof(fullpath));
        if (length < 0) {
            FUNC1(stderr, "Error getting realpath for %s\n", appimage_path);
            FUNC0(EXIT_FAILURE);
        }
        fullpath[length] = '\0';

        FUNC4(portable_dir, "%s.%s", fullpath, name);
        if (!FUNC2(portable_dir, S_IRWXU))
            FUNC1(stderr, "Portable %s directory created at %s\n", name, portable_dir);
        else
            FUNC1(stderr, "Error creating portable %s directory at %s: %s\n", name, portable_dir, FUNC6(errno));

        FUNC0(0);
    }
}