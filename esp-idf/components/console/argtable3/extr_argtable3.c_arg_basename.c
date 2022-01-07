
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILESEPARATOR1 ;
 int FILESEPARATOR2 ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,int ) ;

__attribute__((used)) static const char * arg_basename(const char *filename)
{
    const char *result = ((void*)0), *result1, *result2;




    result1 = (filename ? strrchr(filename, FILESEPARATOR1) : ((void*)0));
    result2 = (filename ? strrchr(filename, FILESEPARATOR2) : ((void*)0));

    if (result2)
        result = result2 + 1;

    if (result1)
        result = result1 + 1;

    if (!result)
        result = filename;


    if (result && ( strcmp(".", result) == 0 || strcmp("..", result) == 0 ))
        result = filename + strlen(filename);

    return result;
}
