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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVOKER_GID ; 
 int /*<<< orphan*/  INVOKER_UID ; 
 int /*<<< orphan*/  FUNC0 (struct passwd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
#if TARGET_OS_OSX
    uid_t lower_uid = _get_sudo_invoker(INVOKER_UID);
    gid_t lower_gid = _get_sudo_invoker(INVOKER_GID);
#else
    struct passwd *pw = FUNC3("mobile");
    T_QUIET; T_WITH_ERRNO; FUNC0(pw, "getpwnam(\"mobile\")");
    uid_t lower_uid = pw->pw_uid;
    gid_t lower_gid = pw->pw_gid;
#endif
    FUNC1(FUNC4(lower_gid), "Change group to %u", lower_gid);
    FUNC1(FUNC5(lower_uid), "Change user to %u", lower_uid);
}