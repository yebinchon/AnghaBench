
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_isspace (char const) ;
 int av_strncasecmp (char const*,char const*,size_t const) ;
 size_t strlen (char const*) ;

const char *ff_smil_get_attr_ptr(const char *s, const char *attr)
{
    int in_quotes = 0;
    const size_t len = strlen(attr);

    while (*s) {
        while (*s) {
            if (!in_quotes && av_isspace(*s))
                break;
            in_quotes ^= *s == '"';
            s++;
        }
        while (av_isspace(*s))
            s++;
        if (!av_strncasecmp(s, attr, len) && s[len] == '=')
            return s + len + 1 + (s[len + 1] == '"');
    }
    return ((void*)0);
}
