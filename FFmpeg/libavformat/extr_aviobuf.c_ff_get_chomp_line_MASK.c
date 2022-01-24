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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC2(AVIOContext *s, char *buf, int maxlen)
{
    int len = FUNC1(s, buf, maxlen);
    while (len > 0 && FUNC0(buf[len - 1]))
        buf[--len] = '\0';
    return len;
}