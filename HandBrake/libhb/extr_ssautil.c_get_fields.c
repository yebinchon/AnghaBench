
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** calloc (int,int) ;
 char* get_field (char**) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

__attribute__((used)) static char ** get_fields(char * line, int last)
{
    int count = 0, ii;
    char * pos;

    if (line == ((void*)0) || *line == 0)
    {
        return ((void*)0);
    }


    count = 1;
    pos = line;
    while ((pos = strchr(pos, ',')) != ((void*)0))
    {
        count++;
        pos++;
    }
    if (last > 0 && count > last)
    {
        count = last;
    }
    char ** result = calloc(count + 1, sizeof(char*));
    pos = line;
    for (ii = 0; ii < count - 1; ii++)
    {
        result[ii] = get_field(&pos);
    }
    result[ii] = strdup(pos);

    return result;
}
