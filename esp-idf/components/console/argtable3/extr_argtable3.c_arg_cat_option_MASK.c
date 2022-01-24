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
                    int optvalue)
{
    if (shortopts)
    {
        char option[3];

        /* note: option array[] is initialiazed dynamically here to satisfy   */
        /* a deficiency in the watcom compiler wrt static array initializers. */
        option[0] = '-';
        option[1] = shortopts[0];
        option[2] = 0;

        FUNC0(&dest, option, &ndest);
        if (datatype)
        {
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
    else if (longopts)
    {
        size_t ncspn;

        /* add "--" tag prefix */
        FUNC0(&dest, "--", &ndest);

        /* add comma separated option tag */
        ncspn = FUNC1(longopts, ",");
        FUNC2(dest, longopts, (ncspn < ndest) ? ncspn : ndest);

        if (datatype)
        {
            FUNC0(&dest, "=", &ndest);
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
    else if (datatype)
    {
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