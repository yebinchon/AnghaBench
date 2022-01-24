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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(const char *base, const char *rel)
{
    char buf[200], buf2[200];
    FUNC1(buf, sizeof(buf), base, rel);
    FUNC2("%s\n", buf);
    if (base) {
        /* Test in-buffer replacement */
        FUNC3(buf2, sizeof(buf2), "%s", base);
        FUNC1(buf2, sizeof(buf2), buf2, rel);
        if (FUNC4(buf, buf2)) {
            FUNC2("In-place handling of %s + %s failed\n", base, rel);
            FUNC0(1);
        }
    }
}