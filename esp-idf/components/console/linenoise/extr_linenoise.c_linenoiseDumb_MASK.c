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

/* Variables and functions */
 int BACKSPACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC3(char* buf, size_t buflen, const char* prompt) {
    /* dumb terminal, fall back to fgets */
    FUNC2(prompt, stdout);
    int count = 0;
    while (count < buflen) {
        int c = FUNC0(stdin);
        if (c == '\n') {
            break;
        } else if (c >= 0x1c && c <= 0x1f){
            continue; /* consume arrow keys */
        } else if (c == BACKSPACE || c == 0x8) {
            if (count > 0) {
                buf[count - 1] = 0;
                count --;
            }
            FUNC2("\x08 ", stdout); /* Windows CMD: erase symbol under cursor */
        } else {
            buf[count] = c;
            ++count;
        }
        FUNC1(c, stdout); /* echo */
    }
    FUNC1('\n', stdout);
    return count;
}