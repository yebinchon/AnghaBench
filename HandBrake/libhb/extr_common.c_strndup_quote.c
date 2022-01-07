
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *strndup_quote(const char *str, char q, int len)
{
    if (str == ((void*)0))
        return ((void*)0);

    char * res;
    int str_len = strlen( str );
    int src = 0, dst = 0;
    res = malloc( len > str_len ? str_len + 1 : len + 1 );
    if ( res == ((void*)0) ) return res;

    while (str[src] != 0 && src < len)
    {
        if (str[src] == q)
            src++;
        else
            res[dst++] = str[src++];
    }
    res[dst] = '\0';
    return res;
}
