
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static int detectsuffix(const char *str, const char *suffix)
{

    while( toupper((int) *str) == toupper((int) *suffix) )
    {



        if (*str == '\0')
            return 1;


        str++;
        suffix++;
    }



    if (*suffix != 0)
        return 0;


    while (isspace((int) *str))
        str++;


    return (*str == '\0') ? 1 : 0;
}
