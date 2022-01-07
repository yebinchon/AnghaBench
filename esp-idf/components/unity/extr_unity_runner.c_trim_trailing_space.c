
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;
 int strlen (char*) ;

__attribute__((used)) static void trim_trailing_space(char *str)
{
    char *end = str + strlen(str) - 1;
    while (end >= str && isspace((int) *end)) {
        *end = 0;
        --end;
    }
}
