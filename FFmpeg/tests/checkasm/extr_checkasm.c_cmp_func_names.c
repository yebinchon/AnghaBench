
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_isdigit (char const) ;

__attribute__((used)) static int cmp_func_names(const char *a, const char *b)
{
    const char *start = a;
    int ascii_diff, digit_diff;

    for (; !(ascii_diff = *(const unsigned char*)a - *(const unsigned char*)b) && *a; a++, b++);
    for (; av_isdigit(*a) && av_isdigit(*b); a++, b++);

    if (a > start && av_isdigit(a[-1]) && (digit_diff = av_isdigit(*a) - av_isdigit(*b)))
        return digit_diff;

    return ascii_diff;
}
