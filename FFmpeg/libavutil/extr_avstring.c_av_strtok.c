
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

char *av_strtok(char *s, const char *delim, char **saveptr)
{
    char *tok;

    if (!s && !(s = *saveptr))
        return ((void*)0);


    s += strspn(s, delim);


    if (!*s) {
        *saveptr = ((void*)0);
        return ((void*)0);
    }
    tok = s++;


    s += strcspn(s, delim);
    if (*s) {
        *s = 0;
        *saveptr = s+1;
    } else {
        *saveptr = ((void*)0);
    }

    return tok;
}
