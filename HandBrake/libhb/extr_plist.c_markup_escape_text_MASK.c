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
 char* FUNC1 (char*,int) ; 
 int FUNC2 (char const*) ; 

char * FUNC3(const char *str)
{
    int ii, jj;
    int len = FUNC2(str);
    int step = 40;
    int alloc = len + step;
    char *markup = FUNC0(alloc);

    for (ii = 0, jj = 0; ii < len; ii++)
    {
        if (jj > alloc - 8)
        {
            alloc += step;
            char *tmp = FUNC1(markup, alloc);
            if (tmp == NULL)
            {
                markup[jj] = 0;
                return markup;
            }
            markup = tmp;
        }
        switch (str[ii])
        {
            case '<':
                markup[jj++] = '&';
                markup[jj++] = 'l';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '>':
                markup[jj++] = '&';
                markup[jj++] = 'g';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '\'':
                markup[jj++] = '&';
                markup[jj++] = 'a';
                markup[jj++] = 'p';
                markup[jj++] = 'o';
                markup[jj++] = 's';
                markup[jj++] = ';';
                break;
            case '"':
                markup[jj++] = '&';
                markup[jj++] = 'q';
                markup[jj++] = 'u';
                markup[jj++] = 'o';
                markup[jj++] = 't';
                markup[jj++] = ';';
                break;
            case '&':
                markup[jj++] = '&';
                markup[jj++] = 'a';
                markup[jj++] = 'm';
                markup[jj++] = 'p';
                markup[jj++] = ';';
                break;
            default:
                markup[jj++] = str[ii];
                break;
        }
        markup[jj] = 0;
    }
    return markup;
}