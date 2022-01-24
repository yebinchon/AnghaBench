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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* char_to_escape ; 
 int /*<<< orphan*/  gen_indent ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const) ; 

void FUNC5(const char *str, bool multiline) {
    if (multiline) {
        gen_indent++;
        FUNC2();
    }
    FUNC1("\"");
    while (*str) {
        const char *start = str;
        while (*str && FUNC4(*str) && !char_to_escape[(unsigned char)*str]) {
            str++;
        }
        if (start != str) {
            FUNC1("%.*s", str - start, start);
        }
        if (*str) {
            if (char_to_escape[(unsigned char)*str]) {
                FUNC1("\\%c", char_to_escape[(unsigned char)*str]);
                if (str[0] == '\n' && str[1]) {
                    FUNC1("\"");
                    FUNC3("\"");
                }
            } else {
                FUNC0(!FUNC4(*str));
                FUNC1("\\x%X", (unsigned char)*str);
            }
            str++;
        }
    }
    FUNC1("\"");
    if (multiline) {
        gen_indent--;
    }
}