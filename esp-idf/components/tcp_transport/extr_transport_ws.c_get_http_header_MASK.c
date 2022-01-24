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
 char* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(const char *buffer, const char *key)
{
    char *found = FUNC0(buffer, key);
    if (found) {
        found += FUNC1(key);
        char *found_end = FUNC2(found, "\r\n");
        if (found_end) {
            found_end[0] = 0;//terminal string

            return FUNC3(found);
        }
    }
    return NULL;
}