
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_IDENTIFIER_CHAR (char const) ;

__attribute__((used)) static int strmatch(const char *s, const char *prefix)
{
    int i;
    for (i=0; prefix[i]; i++) {
        if (prefix[i] != s[i]) return 0;
    }

    return !IS_IDENTIFIER_CHAR(s[i]);
}
