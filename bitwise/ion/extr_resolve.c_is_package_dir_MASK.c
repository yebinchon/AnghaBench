#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* name; scalar_t__ valid; } ;
typedef  TYPE_1__ DirListIter ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

bool FUNC7(const char *search_path, const char *package_path) {
    char path[MAX_PATH];
    FUNC3(path, search_path);
    FUNC5(path, package_path);
    DirListIter iter;
    for (FUNC0(&iter, path); iter.valid; FUNC2(&iter)) {
        const char *ext = FUNC4(iter.name);
        if (ext != iter.name && FUNC6(ext, "ion") == 0) {
            FUNC1(&iter);
            return true;
        }
    }
    return false;
}