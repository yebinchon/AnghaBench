
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hb_strndup (char*,int) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

__attribute__((used)) static char * get_field(char ** pos)
{
    char * result = ((void*)0);
    if (pos == ((void*)0) || *pos == ((void*)0) || **pos == 0)
    {
        return ((void*)0);
    }
    char * start = *pos;
    while (isspace(*start)) start++;
    char * end = strchr(start, ',');
    if (end != ((void*)0))
    {
        result = hb_strndup(start, end - start);
        *pos = end + 1;
    }
    else
    {
        result = strdup(start);
        *pos = ((void*)0);
    }
    return result;
}
