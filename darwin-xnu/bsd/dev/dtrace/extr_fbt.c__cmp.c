
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 int strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static int _cmp(const void *a, const void *b)
{
    return strncmp((const char *)a, *(const char **)b, strlen((const char *)a) + 1);
}
