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
typedef  int /*<<< orphan*/  eol_buf ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char) ; 

void FUNC5(FFTextReader *tr, AVBPrint *buf)
{
    char eol_buf[5], last_was_cr = 0;
    int n = 0, i = 0, nb_eol = 0;

    FUNC1(buf);

    for (;;) {
        char c = FUNC3(tr);

        if (!c)
            break;

        /* ignore all initial line breaks */
        if (n == 0 && FUNC4(c))
            continue;

        /* line break buffering: we don't want to add the trailing \r\n */
        if (FUNC4(c)) {
            nb_eol += c == '\n' || last_was_cr;
            if (nb_eol == 2)
                break;
            eol_buf[i++] = c;
            if (i == sizeof(eol_buf) - 1)
                break;
            last_was_cr = c == '\r';
            continue;
        }

        /* only one line break followed by data: we flush the line breaks
         * buffer */
        if (i) {
            eol_buf[i] = 0;
            FUNC2(buf, "%s", eol_buf);
            i = nb_eol = 0;
        }

        FUNC0(buf, c, 1);
        n++;
    }
}