
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static int field_index(char ** fields, char * name)
{
    int ii;

    if (fields == ((void*)0) || name == ((void*)0))
    {
        return -1;
    }
    for (ii = 0; fields[ii] != ((void*)0); ii++)
    {
        if (!strcasecmp(name, fields[ii]))
        {
            return ii;
        }
    }
    return -1;
}
