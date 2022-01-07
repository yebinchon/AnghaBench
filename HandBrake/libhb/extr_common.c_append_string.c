
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char * append_string(char * dst, const char * src)
{
    int dst_len = 0, src_len, len;

    if (src == ((void*)0))
    {
        return dst;
    }

    src_len = len = strlen(src) + 1;
    if (dst != ((void*)0))
    {
        dst_len = strlen(dst);
        len += dst_len;
    }
    char * tmp = realloc(dst, len);
    if (tmp == ((void*)0))
    {

        return dst;
    }
    dst = tmp;
    memcpy(dst + dst_len, src, src_len);
    return dst;
}
