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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct passwd* FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *user) 
{
    errno = 0;
    struct passwd *pwent = FUNC1(user);
    if (errno) {
        FUNC4("getpwnam(\"%s\")", user);
        FUNC0(32);
    }
    if (!pwent) {
        FUNC5("getpwnam(\"%s\"): no such user", user);
        FUNC0(33);
    }

    int r = FUNC2(pwent->pw_gid);
    if (r == -1) {
        FUNC4("setgid(%d \"%s\")", pwent->pw_gid, user);
        FUNC0(34);
    }

    r = FUNC3(pwent->pw_uid);
    if (r == -1) {
        FUNC4("setuid(%d \"%s\")", pwent->pw_uid, user);
        FUNC0(34);
    }
}