
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

char *tokenize(char *str, const char *delim, char **key) {
    char *result;
    if (str == ((void*)0)) {
        str = *key;
    }
    str += strspn(str, delim);
    if (*str == '\0') {
        return ((void*)0);
    }
    result = str;
    str += strcspn(str, delim);
    if (*str) {
        *str++ = '\0';
    }
    *key = str;
    return result;
}
