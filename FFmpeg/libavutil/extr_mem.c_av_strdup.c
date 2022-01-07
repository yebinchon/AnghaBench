
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_realloc (int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *av_strdup(const char *s)
{
    char *ptr = ((void*)0);
    if (s) {
        size_t len = strlen(s) + 1;
        ptr = av_realloc(((void*)0), len);
        if (ptr)
            memcpy(ptr, s, len);
    }
    return ptr;
}
