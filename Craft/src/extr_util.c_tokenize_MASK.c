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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

char *FUNC2(char *str, const char *delim, char **key) {
    char *result;
    if (str == NULL) {
        str = *key;
    }
    str += FUNC1(str, delim);
    if (*str == '\0') {
        return NULL;
    }
    result = str;
    str += FUNC0(str, delim);
    if (*str) {
        *str++ = '\0';
    }
    *key = str;
    return result;
}