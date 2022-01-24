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
 char FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(AVIOContext *s, char *buf, int maxlen)
{
    int i = 0;
    char c;

    while ((c = FUNC0(s))) {
        if(c == ' ')
            break;
        if (i < maxlen-1)
            buf[i++] = c;
    }

    if(!c)
        FUNC0(s);

    buf[i] = 0; /* Ensure null terminated, but may be truncated */
}