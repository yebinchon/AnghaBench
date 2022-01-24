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
typedef  scalar_t__ gchar ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__ const*) ; 
 int FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (scalar_t__*,char) ; 

__attribute__((used)) static gchar*
FUNC3(const gchar *filename)
{
    gchar *base, *pos, *end;

    base = FUNC0(filename);
    pos = FUNC2(base, '.');
    if (pos != NULL)
    {
        // If the last '.' is within 4 chars of end of name, assume
        // there is an extension we want to strip.
        end = &base[FUNC1(base) - 1];
        if (end - pos <= 4)
            *pos = 0;
    }
    return base;
}