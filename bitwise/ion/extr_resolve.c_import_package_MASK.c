#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* path; int /*<<< orphan*/  full_path; } ;
typedef  TYPE_1__ Package ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ flag_verbose ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  package_map ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC7 (int,int) ; 

Package *FUNC8(const char *package_path) {
    package_path = FUNC5(package_path);
    Package *package = FUNC3(&package_map, package_path);
    if (!package) {
        package = FUNC7(1, sizeof(Package));
        package->path = package_path;
        if (flag_verbose) {
            FUNC4("Importing %s\n", package_path);
        }
        char full_path[MAX_PATH];
        if (!FUNC2(full_path, package_path)) {
            return NULL;
        }
        FUNC6(package->full_path, full_path);
        FUNC0(package);
        FUNC1(package);
    }
    return package;
}