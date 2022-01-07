
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (char const) ;
 char const toupper (char const) ;

__attribute__((used)) static char* strncpyupper( char *dst, const char *src, int len )
{
    int ii;

    for ( ii = 0; ii < len-1 && src[ii]; ii++ )
    {
        dst[ii] = islower(src[ii]) ? toupper(src[ii]) : src[ii];
    }
    dst[ii] = '\0';
    return dst;
}
