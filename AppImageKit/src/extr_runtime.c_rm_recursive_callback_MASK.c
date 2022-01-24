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
struct stat {int dummy; } ;
struct FTW {int dummy; } ;

/* Variables and functions */
#define  FTW_D 134 
#define  FTW_DNR 133 
#define  FTW_DP 132 
#define  FTW_F 131 
#define  FTW_NS 130 
#define  FTW_SL 129 
#define  FTW_SLN 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const char* path, const struct stat* stat, const int type, struct FTW* ftw) {
    (void) stat;
    (void) ftw;

    switch (type) {
        case FTW_NS:
        case FTW_DNR:
            FUNC0(stderr, "%s: ftw error: %s\n",
                path, FUNC3(errno));
            return 1;

        case FTW_D:
            // ignore directories at first, will be handled by FTW_DP
            break;

        case FTW_F:
        case FTW_SL:
        case FTW_SLN:
            if (FUNC1(path) != 0) {
                FUNC0(stderr, "Failed to remove %s: %s\n", path, FUNC3(errno));
                return false;
            }
            break;


        case FTW_DP:
            if (FUNC2(path) != 0) {
                FUNC0(stderr, "Failed to remove directory %s: %s\n", path, FUNC3(errno));
                return false;
            }
            break;

        default:
            FUNC0(stderr, "Unexpected fts_info\n");
            return 1;
    }

    return 0;
}