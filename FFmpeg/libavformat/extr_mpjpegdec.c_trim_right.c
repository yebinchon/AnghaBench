
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static void trim_right(char *p)
{
    char *end;

    if (!p || !*p)
        return;

    end = p + strlen(p);
    while (end > p && av_isspace(*(end-1)))
        *(--end) = '\0';
}
