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
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char **tag, char **value, char *line)
{
    char *p = line;
    int  foundData = 0;

    *tag = NULL;
    *value = NULL;


    while (*p != '\0' && *p != ':') {
        if (!FUNC0(*p)) {
            foundData = 1;
        }
        p++;
    }
    if (*p != ':')
        return foundData ? AVERROR_INVALIDDATA : 0;

    *p   = '\0';
    *tag = line;
    FUNC1(*tag);

    p++;

    while (FUNC0(*p))
        p++;

    *value = p;
    FUNC1(*value);

    return 0;
}