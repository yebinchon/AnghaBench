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
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int FUNC1 (char*,int,char*,long double) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char) ; 

robj *FUNC3(long double value) {
    char buf[256];
    int len;

    /* We use 17 digits precision since with 128 bit floats that precision
     * after rounding is able to represent most small decimal numbers in a way
     * that is "non surprising" for the user (that is, most small decimal
     * numbers will be represented in a way that when converted back into
     * a string are exactly the same as what the user typed.) */
    len = FUNC1(buf,sizeof(buf),"%.17Lf", value);
    /* Now remove trailing zeroes after the '.' */
    if (FUNC2(buf,'.') != NULL) {
        char *p = buf+len-1;
        while(*p == '0') {
            p--;
            len--;
        }
        if (*p == '.') len--;
    }
    return FUNC0(buf,len);
}