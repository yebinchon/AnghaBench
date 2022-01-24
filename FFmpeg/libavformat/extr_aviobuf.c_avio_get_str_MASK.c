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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(AVIOContext *s, int maxlen, char *buf, int buflen)
{
    int i;

    if (buflen <= 0)
        return FUNC0(EINVAL);
    // reserve 1 byte for terminating 0
    buflen = FUNC1(buflen - 1, maxlen);
    for (i = 0; i < buflen; i++)
        if (!(buf[i] = FUNC2(s)))
            return i + 1;
    buf[i] = 0;
    for (; i < maxlen; i++)
        if (!FUNC2(s))
            return i + 1;
    return maxlen;
}