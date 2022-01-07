
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _mem2_calloc (int,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *_mem2_strdup(const char *s)
{
    char *ptr = ((void*)0);

    if (s)
    {
        int len = strlen(s) + 1;

        ptr = _mem2_calloc(1, len);

        if (ptr)
            memcpy(ptr, s, len);
    }

    return ptr;
}
