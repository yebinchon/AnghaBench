
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
void arg_cat(char * *pdest, const char *src, size_t *pndest)
{
    char *dest = *pdest;
    char *end = dest + *pndest;


    while(dest < end && *dest != 0)
        dest++;


    while(dest < end && *src != 0)
        *dest++ = *src++;


    *dest = 0;


    *pndest = end - dest;
    *pdest = dest;
}
