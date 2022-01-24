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
 int FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(AVBPrint *buf, const char *p)
{
    int prev_chr_is_space = 1;

    while (*p) {
        if (*p != '<') {
            if (!FUNC2(*p))
                FUNC0(buf, *p, 1);
            else if (!prev_chr_is_space)
                FUNC0(buf, ' ', 1);
            prev_chr_is_space = FUNC2(*p);
        } else {
            const char *end = FUNC4(p, '>');
            if (!end)
                break;
            if (!FUNC3(p, "<br/>", 5) ||
                !FUNC3(p, "<br>",  4)) {
                FUNC1(buf, "\\N");
            }
            p = end;
        }
        p++;
    }
    return 0;
}