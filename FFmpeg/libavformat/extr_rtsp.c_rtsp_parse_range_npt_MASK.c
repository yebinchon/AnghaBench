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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  SPACE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *p, int64_t *start, int64_t *end)
{
    char buf[256];

    p += FUNC4(p, SPACE_CHARS);
    if (!FUNC2(p, "npt=", &p))
        return;

    *start = AV_NOPTS_VALUE;
    *end = AV_NOPTS_VALUE;

    FUNC3(buf, sizeof(buf), "-", &p);
    if (FUNC1(start, buf, 1) < 0)
        return;
    if (*p == '-') {
        p++;
        FUNC3(buf, sizeof(buf), "-", &p);
        if (FUNC1(end, buf, 1) < 0)
            FUNC0(NULL, AV_LOG_DEBUG, "Failed to parse interval end specification '%s'\n", buf);
    }
}