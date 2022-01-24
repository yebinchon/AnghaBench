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
typedef  size_t ptrdiff_t ;
typedef  int /*<<< orphan*/  FFTextReader ;

/* Variables and functions */
 size_t AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *) ; 

ptrdiff_t FUNC3(FFTextReader *tr, char *buf, size_t size)
{
    size_t cur = 0;
    if (!size)
        return 0;
    while (cur + 1 < size) {
        unsigned char c = FUNC2(tr);
        if (!c)
            return FUNC0(tr) ? cur : AVERROR_INVALIDDATA;
        if (c == '\r' || c == '\n')
            break;
        buf[cur++] = c;
        buf[cur] = '\0';
    }
    while (FUNC1(tr) == '\r')
        FUNC2(tr);
    if (FUNC1(tr) == '\n')
        FUNC2(tr);
    return cur;
}