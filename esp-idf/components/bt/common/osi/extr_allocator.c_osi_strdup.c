
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ osi_calloc (size_t) ;
 int strlen (char const*) ;

char *osi_strdup(const char *str)
{
    size_t size = strlen(str) + 1;
    char *new_string = (char *)osi_calloc(size);

    if (!new_string) {
        return ((void*)0);
    }

    memcpy(new_string, str, size);
    return new_string;
}
