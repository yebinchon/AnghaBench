
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_cat (char**,char const*,size_t*) ;
 size_t strcspn (char const*,char*) ;
 int strncat (char*,char const*,size_t) ;

__attribute__((used)) static
void arg_cat_option(char *dest,
                    size_t ndest,
                    const char *shortopts,
                    const char *longopts,
                    const char *datatype,
                    int optvalue)
{
    if (shortopts)
    {
        char option[3];



        option[0] = '-';
        option[1] = shortopts[0];
        option[2] = 0;

        arg_cat(&dest, option, &ndest);
        if (datatype)
        {
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
    else if (longopts)
    {
        size_t ncspn;


        arg_cat(&dest, "--", &ndest);


        ncspn = strcspn(longopts, ",");
        strncat(dest, longopts, (ncspn < ndest) ? ncspn : ndest);

        if (datatype)
        {
            arg_cat(&dest, "=", &ndest);
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
    else if (datatype)
    {
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
