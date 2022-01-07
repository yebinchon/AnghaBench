
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* WHITESPACES ;
 char* av_malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char const*) ;

char *av_get_token(const char **buf, const char *term)
{
    char *out = av_malloc(strlen(*buf) + 1);
    char *ret = out, *end = out;
    const char *p = *buf;
    if (!out)
        return ((void*)0);
    p += strspn(p, WHITESPACES);

    while (*p && !strspn(p, term)) {
        char c = *p++;
        if (c == '\\' && *p) {
            *out++ = *p++;
            end = out;
        } else if (c == '\'') {
            while (*p && *p != '\'')
                *out++ = *p++;
            if (*p) {
                p++;
                end = out;
            }
        } else {
            *out++ = c;
        }
    }

    do
        *out-- = 0;
    while (out >= end && strspn(out, WHITESPACES));

    *buf = p;

    return ret;
}
