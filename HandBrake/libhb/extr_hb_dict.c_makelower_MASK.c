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
 char* FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 char FUNC2 (char const) ; 

__attribute__((used)) static char * FUNC3(const char *key)
{
    int    ii, len = FUNC1(key);
    char * lower = FUNC0(len + 1);

    for (ii = 0; ii < len; ii++)
    {
        lower[ii] = FUNC2(key[ii]);
    }
    lower[ii] = '\0';
    return lower;
}