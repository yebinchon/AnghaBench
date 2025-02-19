
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX (scalar_t__,size_t) ;
 char* malloc (size_t) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncat (char*,char const*,size_t) ;

char * hb_strncat_dup( const char * s1, const char * s2, size_t n )
{
    size_t len;
    char * str;

    len = 0;
    if( s1 )
        len += strlen( s1 );
    if( s2 )
        len += MAX( strlen( s2 ), n );
    if( !len )
        return ((void*)0);

    str = malloc( len + 1 );
    if( !str )
        return ((void*)0);

    if( s1 )
        strcpy( str, s1 );
    else
        strcpy( str, "" );

    if (s2)
    {
        strncat( str, s2, n );
    }

    return str;
}
