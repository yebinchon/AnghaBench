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
 double INFINITY ; 
 double NAN ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 char* FUNC2 (char const*) ; 
 double FUNC3 (char const*,char**) ; 
 double FUNC4 (char const*,char**,int) ; 

double FUNC5(const char *nptr, char **endptr)
{
    const char *end;
    double res;

    /* Skip leading spaces */
    while (FUNC0(*nptr))
        nptr++;

    if (!FUNC1(nptr, "infinity", 8)) {
        end = nptr + 8;
        res = INFINITY;
    } else if (!FUNC1(nptr, "inf", 3)) {
        end = nptr + 3;
        res = INFINITY;
    } else if (!FUNC1(nptr, "+infinity", 9)) {
        end = nptr + 9;
        res = INFINITY;
    } else if (!FUNC1(nptr, "+inf", 4)) {
        end = nptr + 4;
        res = INFINITY;
    } else if (!FUNC1(nptr, "-infinity", 9)) {
        end = nptr + 9;
        res = -INFINITY;
    } else if (!FUNC1(nptr, "-inf", 4)) {
        end = nptr + 4;
        res = -INFINITY;
    } else if (!FUNC1(nptr, "nan", 3)) {
        end = FUNC2(nptr + 3);
        res = NAN;
    } else if (!FUNC1(nptr, "+nan", 4) ||
               !FUNC1(nptr, "-nan", 4)) {
        end = FUNC2(nptr + 4);
        res = NAN;
    } else if (!FUNC1(nptr, "0x", 2) ||
               !FUNC1(nptr, "-0x", 3) ||
               !FUNC1(nptr, "+0x", 3)) {
        /* FIXME this doesn't handle exponents, non-integers (float/double)
         * and numbers too large for long long */
        res = FUNC4(nptr, (char **)&end, 16);
    } else {
        res = FUNC3(nptr, (char **)&end);
    }

    if (endptr)
        *endptr = (char *)end;

    return res;
}