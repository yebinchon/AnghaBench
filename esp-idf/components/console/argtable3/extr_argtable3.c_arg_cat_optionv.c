
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_cat (char**,char const*,size_t*) ;
 size_t strcspn (char const*,char*) ;
 int strncat (char*,char const*,size_t) ;

__attribute__((used)) static
void arg_cat_optionv(char *dest,
                     size_t ndest,
                     const char *shortopts,
                     const char *longopts,
                     const char *datatype,
                     int optvalue,
                     const char *separator)
{
    separator = separator ? separator : "";

    if (shortopts)
    {
        const char *c = shortopts;
        while(*c)
        {

            char shortopt[3];



            shortopt[0] = '-';
            shortopt[1] = *c;
            shortopt[2] = 0;

            arg_cat(&dest, shortopt, &ndest);
            if (*++c)
                arg_cat(&dest, separator, &ndest);
        }
    }


    if (shortopts && longopts)
        arg_cat(&dest, separator, &ndest);

    if (longopts)
    {
        const char *c = longopts;
        while(*c)
        {
            size_t ncspn;


            arg_cat(&dest, "--", &ndest);


            ncspn = strcspn(c, ",");
            strncat(dest, c, (ncspn < ndest) ? ncspn : ndest);
            c += ncspn;


            if (*c == ',')
            {
                arg_cat(&dest, separator, &ndest);
                c++;
            }
        }
    }

    if (datatype)
    {
        if (longopts)
            arg_cat(&dest, "=", &ndest);
        else if (shortopts)
            arg_cat(&dest, " ", &ndest);

        if (optvalue)
        {
            arg_cat(&dest, "[", &ndest);
            arg_cat(&dest, datatype, &ndest);
            arg_cat(&dest, "]", &ndest);
        }
        else
            arg_cat(&dest, datatype, &ndest);
    }
}
