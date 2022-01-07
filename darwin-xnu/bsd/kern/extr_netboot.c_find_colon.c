
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static __inline__ char *
find_colon(char * str)
{
    char * start = str;
    char * colon;

    while ((colon = strchr(start, ':')) != ((void*)0)) {
 char * dst;
 char * src;

 if (colon == start) {
     break;
 }
 if (colon[-1] != '\\')
     break;
 for (dst = colon - 1, src = colon; *dst != '\0'; dst++, src++) {
     *dst = *src;
 }
 start = colon;
    }
    return (colon);
}
