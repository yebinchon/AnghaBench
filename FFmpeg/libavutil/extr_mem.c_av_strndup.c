
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_realloc (int *,size_t) ;
 char* memchr (char const*,int ,size_t) ;
 int memcpy (char*,char const*,size_t) ;

char *av_strndup(const char *s, size_t len)
{
    char *ret = ((void*)0), *end;

    if (!s)
        return ((void*)0);

    end = memchr(s, 0, len);
    if (end)
        len = end - s;

    ret = av_realloc(((void*)0), len + 1);
    if (!ret)
        return ((void*)0);

    memcpy(ret, s, len);
    ret[len] = 0;
    return ret;
}
