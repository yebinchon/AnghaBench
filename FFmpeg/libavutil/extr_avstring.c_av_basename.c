
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FFMAX3 (char*,char*,char*) ;
 char* strchr (char const*,char) ;
 char* strrchr (char const*,char) ;

const char *av_basename(const char *path)
{
    char *p;

    if (!path || *path == '\0')
        return ".";

    p = strrchr(path, '/');







    if (!p)
        return path;

    return p + 1;
}
