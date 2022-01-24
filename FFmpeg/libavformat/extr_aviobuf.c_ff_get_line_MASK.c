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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(AVIOContext *s, char *buf, int maxlen)
{
    int i = 0;
    char c;

    do {
        c = FUNC1(s);
        if (c && i < maxlen-1)
            buf[i++] = c;
    } while (c != '\n' && c != '\r' && c);
    if (c == '\r' && FUNC1(s) != '\n' && !FUNC0(s))
        FUNC2(s, -1);

    buf[i] = 0;
    return i;
}