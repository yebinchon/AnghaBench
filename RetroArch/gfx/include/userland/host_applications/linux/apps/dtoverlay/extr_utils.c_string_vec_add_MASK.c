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
struct TYPE_3__ {int num_strings; int max_strings; char** strings; } ;
typedef  TYPE_1__ STRING_VEC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char** FUNC2 (char**,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

char *FUNC5(STRING_VEC_T *vec, const char *str, int len)
{
    char *copy;
    if (vec->num_strings == vec->max_strings)
    {
	if (vec->max_strings)
	    vec->max_strings *= 2;
	else
	    vec->max_strings = 16;
	vec->strings = FUNC2(vec->strings, vec->max_strings * sizeof(const char *));
	if (!vec->strings)
	    FUNC0("Out of memory");
    }

    if (len)
    {
	copy = FUNC1(len + 1);
	FUNC4(copy, str, len);
	copy[len] = '\0';
    }
    else
       copy = FUNC3(str);

    if (!copy)
	FUNC0("Out of memory");

    vec->strings[vec->num_strings++] = copy;

    return copy;
}