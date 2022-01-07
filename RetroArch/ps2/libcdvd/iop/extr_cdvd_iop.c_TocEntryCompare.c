
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 char* strtok (char*,char*) ;

int TocEntryCompare(char *filename, const char *extensions)
{
    static char ext_list[129];

    char *token;

    char *ext_point;

    strncpy(ext_list, extensions, 128);
    ext_list[128] = 0;

    token = strtok(ext_list, " ,");
    while (token != ((void*)0)) {


        ext_point = strrchr(filename, '.');

        if (strcasecmp(ext_point, token) == 0)
            return (TRUE);


        token = strtok(((void*)0), " ,");
    }


    return (FALSE);
}
