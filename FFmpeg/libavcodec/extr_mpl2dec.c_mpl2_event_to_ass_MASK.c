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
 scalar_t__ FUNC2 (char*,char const) ; 

__attribute__((used)) static int FUNC3(AVBPrint *buf, const char *p)
{
    if (*p == ' ')
        p++;

    while (*p) {
        int got_style = 0;

        while (*p && FUNC2("/\\_", *p)) {
            if      (*p == '/')  FUNC1(buf, "{\\i1}");
            else if (*p == '\\') FUNC1(buf, "{\\b1}");
            else if (*p == '_')  FUNC1(buf, "{\\u1}");
            got_style = 1;
            p++;
        }

        while (*p && *p != '|') {
            if (*p != '\r' && *p != '\n')
                FUNC0(buf, *p, 1);
            p++;
        }

        if (*p == '|') {
            if (got_style)
                FUNC1(buf, "{\\r}");
            FUNC1(buf, "\\N");
            p++;
        }
    }

    return 0;
}