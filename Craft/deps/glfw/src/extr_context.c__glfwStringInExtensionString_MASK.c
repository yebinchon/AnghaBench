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
 int GL_FALSE ; 
 int GL_TRUE ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char const*) ; 

int FUNC2(const char* string, const char* extensions)
{
    const char* start = extensions;

    for (;;)
    {
        const char* where;
        const char* terminator;

        where = FUNC1(start, string);
        if (!where)
            return GL_FALSE;

        terminator = where + FUNC0(string);
        if (where == start || *(where - 1) == ' ')
        {
            if (*terminator == ' ' || *terminator == '\0')
                break;
        }

        start = terminator;
    }

    return GL_TRUE;
}