#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_strings; char** strings; } ;
typedef  TYPE_1__ STRING_VEC_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 

int FUNC2(STRING_VEC_T *vec, const char *str, int len)
{
    int i;

    for (i = 0; i < vec->num_strings; i++)
    {
	if (len)
	{
	    if ((FUNC1(vec->strings[i], str, len) == 0) &&
		(vec->strings[i][len] == '\0'))
		return i;
	}
	else if (FUNC0(vec->strings[i], str) == 0)
	    return i;
    }

    return -1;
}