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
typedef  double int64_t ;

/* Variables and functions */
 int FUNC0 (void*,char const*,int /*<<< orphan*/ *,double*,int*,double*,int) ; 

int FUNC1(void *obj, const char *name, int search_flags, int64_t *out_val)
{
    int64_t intnum = 1;
    double num = 1;
    int ret, den = 1;

    if ((ret = FUNC0(obj, name, NULL, &num, &den, &intnum, search_flags)) < 0)
        return ret;
    *out_val = num * intnum / den;
    return 0;
}