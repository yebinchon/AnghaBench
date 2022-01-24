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
typedef  enum AVEscapeMode { ____Placeholder_AVEscapeMode } AVEscapeMode ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int AV_ESCAPE_FLAG_STRICT ; 
 int AV_ESCAPE_FLAG_WHITESPACE ; 
 int AV_ESCAPE_MODE_AUTO ; 
 int AV_ESCAPE_MODE_BACKSLASH ; 
#define  AV_ESCAPE_MODE_QUOTE 128 
 char* WHITESPACES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const) ; 

void FUNC3(AVBPrint *dstbuf, const char *src, const char *special_chars,
                      enum AVEscapeMode mode, int flags)
{
    const char *src0 = src;

    if (mode == AV_ESCAPE_MODE_AUTO)
        mode = AV_ESCAPE_MODE_BACKSLASH; /* TODO: implement a heuristic */

    switch (mode) {
    case AV_ESCAPE_MODE_QUOTE:
        /* enclose the string between '' */
        FUNC0(dstbuf, '\'', 1);
        for (; *src; src++) {
            if (*src == '\'')
                FUNC1(dstbuf, "'\\''");
            else
                FUNC0(dstbuf, *src, 1);
        }
        FUNC0(dstbuf, '\'', 1);
        break;

    /* case AV_ESCAPE_MODE_BACKSLASH or unknown mode */
    default:
        /* \-escape characters */
        for (; *src; src++) {
            int is_first_last       = src == src0 || !*(src+1);
            int is_ws               = !!FUNC2(WHITESPACES, *src);
            int is_strictly_special = special_chars && FUNC2(special_chars, *src);
            int is_special          =
                is_strictly_special || FUNC2("'\\", *src) ||
                (is_ws && (flags & AV_ESCAPE_FLAG_WHITESPACE));

            if (is_strictly_special ||
                (!(flags & AV_ESCAPE_FLAG_STRICT) &&
                 (is_special || (is_ws && is_first_last))))
                FUNC0(dstbuf, '\\', 1);
            FUNC0(dstbuf, *src, 1);
        }
        break;
    }
}