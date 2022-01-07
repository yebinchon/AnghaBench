
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;
 long strtol (char const*,char**,int) ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static long int strtol0X(const char * str,
                         const char * *endptr,
                         char X,
                         int base)
{
    long int val;
    int s = 1;
    const char *ptr = str;


    while (isspace((int) *ptr))
        ptr++;



    switch (*ptr)
    {
    case '+':
        ptr++;
        s = 1;
        break;
    case '-':
        ptr++;
        s = -1;
        break;
    default:
        s = 1;
        break;
    }



    if ((*ptr++) != '0')
    {

        *endptr = str;
        return 0;
    }

    if (toupper((int) *ptr++) != toupper((int) X))
    {

        *endptr = str;
        return 0;
    }



    val = strtol(ptr, (char * *)endptr, base);
    if (*endptr == ptr)
    {

        *endptr = str;
        return 0;
    }


    return s * val;
}
