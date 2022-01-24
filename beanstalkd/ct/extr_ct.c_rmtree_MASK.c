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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(char *path)
{
    int r = FUNC10(path);
    if (r == 0 || errno == ENOENT) {
        return; /* success */
    }
    int unlinkerr = errno;

    DIR *d = FUNC2(path);
    if (!d) {
        if (errno == ENOTDIR) {
            FUNC1(stderr, "ct: unlink: %s\n", FUNC8(unlinkerr));
        } else {
            FUNC3("ct: opendir");
        }
        FUNC1(stderr, "ct: path %s\n", path);
        return;
    }
    struct dirent *ent;
    while ((ent = FUNC4(d))) {
        if (FUNC7(ent->d_name, ".") == 0 || FUNC7(ent->d_name, "..") == 0) {
            continue;
        }
        int n = FUNC9(path) + 1 + FUNC9(ent->d_name);
        char s[n+1];
        FUNC6(s, "%s/%s", path, ent->d_name);
        FUNC11(s);
    }
    FUNC0(d);
    r = FUNC5(path);
    if (r == -1) {
        FUNC3("ct: rmdir");
        FUNC1(stderr, "ct: path %s\n", path);
    }
}