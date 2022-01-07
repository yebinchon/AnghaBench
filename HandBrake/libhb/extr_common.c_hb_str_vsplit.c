
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** calloc (int,int) ;
 char** malloc (int) ;
 char* strchr_quote (char const*,char,char) ;
 int strlen (char const*) ;
 char* strndup_quote (char const*,char,int) ;

char** hb_str_vsplit( const char *str, char delem )
{
    const char * pos;
    const char * end;
    char ** ret;
    int count, i;
    char quote = '"';

    if (delem == '"')
    {
        quote = '\'';
    }
    if ( str == ((void*)0) || str[0] == 0 )
    {
        ret = malloc( sizeof(char*) );
        if ( ret == ((void*)0) ) return ret;
        *ret = ((void*)0);
        return ret;
    }


    count = 1;
    pos = str;
    while ( ( pos = strchr_quote( pos, delem, quote ) ) != ((void*)0) )
    {
        count++;
        pos++;
    }

    ret = calloc( ( count + 1 ), sizeof(char*) );
    if ( ret == ((void*)0) ) return ret;

    pos = str;
    for ( i = 0; i < count - 1; i++ )
    {
        end = strchr_quote( pos, delem, quote );
        ret[i] = strndup_quote(pos, quote, end - pos);
        pos = end + 1;
    }
    ret[i] = strndup_quote(pos, quote, strlen(pos));

    return ret;
}
