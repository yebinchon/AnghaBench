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
 char** FUNC0 (int,int) ; 
 char** FUNC1 (int) ; 
 char* FUNC2 (char const*,int) ; 
 char* FUNC3 (char const*,char const*,char) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char** FUNC5( const char *str, int width )
{
    const char *  pos;
    const char *  end;
    char ** ret;
    int     count, ii;
    int     len;
    char    delem = ' ';

    if ( str == NULL || str[0] == 0 )
    {
        ret = FUNC1( sizeof(char*) );
        if ( ret == NULL ) return ret;
        *ret = NULL;
        return ret;
    }

    len = FUNC4(str);

    // Find number of elements in the string
    count = 1;
    pos = str;
    end = pos + width;
    while (end < str + len)
    {
        end = FUNC3(pos, end, delem);
        if (end == pos)
        {
            // Shouldn't happen for reasonable input
            break;
        }
        count++;
        pos = end + 1;
        end = pos + width;
    }
    count++;
    ret = FUNC0( ( count + 1 ), sizeof(char*) );
    if ( ret == NULL ) return ret;

    pos = str;
    end = pos + width;
    for (ii = 0; ii < count - 1 && end < str + len; ii++)
    {
        end = FUNC3(pos, end, delem);
        if (end == pos)
        {
            break;
        }
        ret[ii] = FUNC2(pos, end - pos);
        pos = end + 1;
        end = pos + width;
    }
    if (*pos != 0 && ii < count - 1)
    {
        ret[ii] = FUNC2(pos, width);
    }

    return ret;
}