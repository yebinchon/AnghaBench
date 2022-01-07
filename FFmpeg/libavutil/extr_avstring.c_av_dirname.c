
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FFMAX3 (char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

const char *av_dirname(char *path)
{
    char *p = path ? strrchr(path, '/') : ((void*)0);
    if (!p)
        return ".";

    *p = '\0';

    return path;
}
