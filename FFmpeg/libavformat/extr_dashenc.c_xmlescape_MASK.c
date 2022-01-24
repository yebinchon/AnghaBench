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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *str) {
    int outlen = FUNC3(str)*3/2 + 6;
    char *out = FUNC1(NULL, outlen + 1);
    int pos = 0;
    if (!out)
        return NULL;
    for (; *str; str++) {
        if (pos + 6 > outlen) {
            char *tmp;
            outlen = 2 * outlen + 6;
            tmp = FUNC1(out, outlen + 1);
            if (!tmp) {
                FUNC0(out);
                return NULL;
            }
            out = tmp;
        }
        if (*str == '&') {
            FUNC2(&out[pos], "&amp;", 5);
            pos += 5;
        } else if (*str == '<') {
            FUNC2(&out[pos], "&lt;", 4);
            pos += 4;
        } else if (*str == '>') {
            FUNC2(&out[pos], "&gt;", 4);
            pos += 4;
        } else if (*str == '\'') {
            FUNC2(&out[pos], "&apos;", 6);
            pos += 6;
        } else if (*str == '\"') {
            FUNC2(&out[pos], "&quot;", 6);
            pos += 6;
        } else {
            out[pos++] = *str;
        }
    }
    out[pos] = '\0';
    return out;
}