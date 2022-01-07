
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,int) ;

__attribute__((used)) static int indexof(const char *s, int c)
{
    char *f = strchr(s, c);
    return f ? (f - s) : -1;
}
