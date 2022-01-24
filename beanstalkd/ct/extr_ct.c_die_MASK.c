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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(int code, int err, const char *msg)
{
    FUNC2('\n', stderr);

    if (msg && *msg) {
        FUNC1(msg, stderr);
        FUNC1(": ", stderr);
    }

    FUNC1(FUNC3(err), stderr);
    FUNC2('\n', stderr);
    FUNC0(code);
}