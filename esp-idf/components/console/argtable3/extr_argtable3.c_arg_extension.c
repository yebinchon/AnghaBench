
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char * arg_extension(const char *basename)
{

    const char *result = (basename ? strrchr(basename, '.') : ((void*)0));


    if (basename && !result)
        result = basename + strlen(basename);


    if (basename && result == basename)
        result = basename + strlen(basename);


    if (basename && result && result[1] == '\0')
        result = basename + strlen(basename);

    return result;
}
