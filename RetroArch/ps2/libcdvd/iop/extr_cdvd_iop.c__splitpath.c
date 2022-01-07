
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,int) ;

void _splitpath(const char *constpath, char *dir, char *fname)
{


    static char pathcopy[1024 + 1];

    char *slash;

    strncpy(pathcopy, constpath, 1024);

    slash = strrchr(pathcopy, '/');


    if (!slash)
        slash = strrchr(pathcopy, (int)'\\');


    if (slash != ((void*)0)) {

        slash[0] = 0;

        strncpy(dir, pathcopy, 1024);
        dir[255] = 0;


        strncpy(fname, slash + 1, 128);
        fname[128] = 0;
    } else {
        dir[0] = 0;

        strncpy(fname, pathcopy, 128);
        fname[128] = 0;
    }
}
