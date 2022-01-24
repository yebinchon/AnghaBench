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
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 size_t FUNC2 (char*,size_t,long long) ; 
 size_t FUNC3 (char*,size_t,char*,...) ; 

int FUNC4(char *buf, size_t len, double value) {
    if (FUNC1(value)) {
        len = FUNC3(buf,len,"nan");
    } else if (FUNC0(value)) {
        if (value < 0)
            len = FUNC3(buf,len,"-inf");
        else
            len = FUNC3(buf,len,"inf");
    } else if (value == 0) {
        /* See: http://en.wikipedia.org/wiki/Signed_zero, "Comparisons". */
        if (1.0/value < 0)
            len = FUNC3(buf,len,"-0");
        else
            len = FUNC3(buf,len,"0");
    } else {
#if (DBL_MANT_DIG >= 52) && (LLONG_MAX == 0x7fffffffffffffffLL)
        /* Check if the float is in a safe range to be casted into a
         * long long. We are assuming that long long is 64 bit here.
         * Also we are assuming that there are no implementations around where
         * double has precision < 52 bit.
         *
         * Under this assumptions we test if a double is inside an interval
         * where casting to long long is safe. Then using two castings we
         * make sure the decimal part is zero. If all this is true we use
         * integer printing function that is much faster. */
        double min = -4503599627370495; /* (2^52)-1 */
        double max = 4503599627370496; /* -(2^52) */
        if (value > min && value < max && value == ((double)((long long)value)))
            len = ll2string(buf,len,(long long)value);
        else
#endif
            len = FUNC3(buf,len,"%.17g",value);
    }

    return len;
}