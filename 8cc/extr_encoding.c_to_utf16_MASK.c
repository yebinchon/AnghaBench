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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

Buffer *FUNC3(char *p, int len) {
    Buffer *b = FUNC0();
    char *end = p + len;
    while (p != end) {
        uint32_t rune;
        p += FUNC1(&rune, p, end);
        if (rune < 0x10000) {
            FUNC2(b, rune);
        } else {
            FUNC2(b, (rune >> 10) + 0xD7C0);
            FUNC2(b, (rune & 0x3FF) + 0xDC00);
        }
    }
    return b;
}