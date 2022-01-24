#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char const*,size_t*) ; 
 size_t FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static
void FUNC3(char *dest,
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
            /* "-a|-b|-c" */
            char shortopt[3];

            /* note: shortopt array[] is initialiazed dynamically here to satisfy */
            /* a deficiency in the watcom compiler wrt static array initializers. */
            shortopt[0] = '-';
            shortopt[1] = *c;
            shortopt[2] = 0;

            FUNC0(&dest, shortopt, &ndest);
            if (*++c)
                FUNC0(&dest, separator, &ndest);
        }
    }

    /* put separator between long opts and short opts */
    if (shortopts && longopts)
        FUNC0(&dest, separator, &ndest);

    if (longopts)
    {
        const char *c = longopts;
        while(*c)
        {
            size_t ncspn;

            /* add "--" tag prefix */
            FUNC0(&dest, "--", &ndest);

            /* add comma separated option tag */
            ncspn = FUNC1(c, ",");
            FUNC2(dest, c, (ncspn < ndest) ? ncspn : ndest);
            c += ncspn;

            /* add given separator in place of comma */
            if (*c == ',')
            {
                FUNC0(&dest, separator, &ndest);
                c++;
            }
        }
    }

    if (datatype)
    {
        if (longopts)
            FUNC0(&dest, "=", &ndest);
        else if (shortopts)
            FUNC0(&dest, " ", &ndest);

        if (optvalue)
        {
            FUNC0(&dest, "[", &ndest);
            FUNC0(&dest, datatype, &ndest);
            FUNC0(&dest, "]", &ndest);
        }
        else
            FUNC0(&dest, datatype, &ndest);
    }
}