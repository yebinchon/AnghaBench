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
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char * FUNC3(char * str)
{
    char * eol;

    if (str == NULL)
    {
        return NULL;
    }

    // find end of line
    eol = FUNC1(str, '\n');
    if (eol != NULL)
    {
        if (eol > str && *(eol - 1) == '\r')
        {
            eol--;
        }
    }
    if (eol != NULL)
    {
        return FUNC0(str, eol - str);
    }
    else
    {
        return FUNC2(str);
    }
}