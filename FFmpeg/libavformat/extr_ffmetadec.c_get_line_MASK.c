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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVIOContext *s, uint8_t *buf, int size)
{
    do {
        uint8_t c;
        int i = 0;

        while ((c = FUNC1(s))) {
            if (c == '\\') {
                if (i < size - 1)
                    buf[i++] = c;
                c = FUNC1(s);
            } else if (c == '\n')
                break;

            if (i < size - 1)
                buf[i++] = c;
        }
        buf[i] = 0;
    } while (!FUNC0(s) && (buf[0] == ';' || buf[0] == '#' || buf[0] == 0));
}