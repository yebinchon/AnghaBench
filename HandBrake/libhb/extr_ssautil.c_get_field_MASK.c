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
 char* FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static char * FUNC4(char ** pos)
{
    char * result = NULL;
    if (pos == NULL || *pos == NULL || **pos == 0)
    {
        return NULL;
    }
    char * start = *pos;
    while (FUNC1(*start)) start++;
    char * end = FUNC2(start, ',');
    if (end != NULL)
    {
        result = FUNC0(start, end - start);
        *pos = end + 1;
    }
    else
    {
        result = FUNC3(start);
        *pos = NULL;
    }
    return result;
}