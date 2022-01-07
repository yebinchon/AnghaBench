
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *check_nan_suffix(const char *s)
{
    const char *start = s;

    if (*s++ != '(')
        return start;

    while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') ||
           (*s >= '0' && *s <= '9') || *s == '_')
        s++;

    return *s == ')' ? s + 1 : start;
}
