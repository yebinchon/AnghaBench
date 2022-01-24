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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (char const*,char const) ; 

void FUNC3(AVBPrint *buf, const char *p, int size,
                             const char *linebreaks, int keep_ass_markup)
{
    const char *p_end = p + size;

    for (; p < p_end && *p; p++) {

        /* forced custom line breaks, not accounted as "normal" EOL */
        if (linebreaks && FUNC2(linebreaks, *p)) {
            FUNC1(buf, "\\N");

        /* standard ASS escaping so random characters don't get mis-interpreted
         * as ASS */
        } else if (!keep_ass_markup && FUNC2("{}\\", *p)) {
            FUNC1(buf, "\\%c", *p);

        /* some packets might end abruptly (no \0 at the end, like for example
         * in some cases of demuxing from a classic video container), some
         * might be terminated with \n or \r\n which we have to remove (for
         * consistency with those who haven't), and we also have to deal with
         * evil cases such as \r at the end of the buffer (and no \0 terminated
         * character) */
        } else if (p[0] == '\n') {
            /* some stuff left so we can insert a line break */
            if (p < p_end - 1)
                FUNC1(buf, "\\N");
        } else if (p[0] == '\r' && p < p_end - 1 && p[1] == '\n') {
            /* \r followed by a \n, we can skip it. We don't insert the \N yet
             * because we don't know if it is followed by more text */
            continue;

        /* finally, a sane character */
        } else {
            FUNC0(buf, *p, 1);
        }
    }
}