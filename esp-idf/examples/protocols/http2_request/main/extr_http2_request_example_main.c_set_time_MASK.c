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
struct timezone {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct timeval {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNTP_OPMODE_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
    struct timeval tv = {
        .tv_sec = 1509449941,
    };
    struct timezone tz = {
        0, 0
    };
    FUNC0(&tv, &tz);

    /* Start SNTP service */
    FUNC2(SNTP_OPMODE_POLL);
    FUNC1();
}