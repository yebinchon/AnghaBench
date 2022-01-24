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
 char* FUNC2 (char const*,char,char) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char,int) ; 

char** FUNC5( const char *str, char delem )
{
    const char *  pos;
    const char *  end;
    char       ** ret;
    int           count, i;
    char          quote = '"';

    if (delem == '"')
    {
        quote = '\'';
    }
    if ( str == NULL || str[0] == 0 )
    {
        ret = FUNC1( sizeof(char*) );
        if ( ret == NULL ) return ret;
        *ret = NULL;
        return ret;
    }

    // Find number of elements in the string
    count = 1;
    pos = str;
    while ( ( pos = FUNC2( pos, delem, quote ) ) != NULL )
    {
        count++;
        pos++;
    }

    ret = FUNC0( ( count + 1 ), sizeof(char*) );
    if ( ret == NULL ) return ret;

    pos = str;
    for ( i = 0; i < count - 1; i++ )
    {
        end = FUNC2( pos, delem, quote );
        ret[i] = FUNC4(pos, quote, end - pos);
        pos = end + 1;
    }
    ret[i] = FUNC4(pos, quote, FUNC3(pos));

    return ret;
}