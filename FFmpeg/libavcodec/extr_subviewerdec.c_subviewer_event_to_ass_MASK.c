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
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(AVBPrint *buf, const char *p)
{
    while (*p) {
        if (!FUNC2(p, "[br]", 4)) {
            FUNC1(buf, "\\N");
            p += 4;
        } else {
            if (p[0] == '\n' && p[1])
                FUNC1(buf, "\\N");
            else if (*p != '\n' && *p != '\r')
                FUNC0(buf, *p, 1);
            p++;
        }
    }

    return 0;
}