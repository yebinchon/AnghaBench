
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int iso8859 ;
typedef scalar_t__ iconv_t ;


 int av_freep (char**) ;
 char* av_malloc (int) ;
 int get8 (int const**,int const*) ;
 int iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char const*) ;
 int memcpy (char*,int const*,int) ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static char *getstr8(const uint8_t **pp, const uint8_t *p_end)
{
    int len;
    const uint8_t *p;
    char *str;

    p = *pp;
    len = get8(&p, p_end);
    if (len < 0)
        return ((void*)0);
    if (len > p_end - p)
        return ((void*)0);
    str = av_malloc(len + 1);
    if (!str)
        return ((void*)0);
    memcpy(str, p, len);
    str[len] = '\0';
    p += len;
    *pp = p;
    return str;
}
