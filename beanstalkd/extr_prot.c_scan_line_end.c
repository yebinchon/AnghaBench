
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,int) ;

__attribute__((used)) static size_t
scan_line_end(const char *s, int size)
{
    char *match;

    match = memchr(s, '\r', size - 1);
    if (!match)
        return 0;


    if (match[1] == '\n')
        return match - s + 2;

    return 0;
}
