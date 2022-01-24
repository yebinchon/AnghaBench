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
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 

char *FUNC4(const char *first_str, int len_first, const char *second_str, int len_second)
{
    int first_str_len = len_first > 0 ? len_first : FUNC3(first_str);
    int second_str_len = len_second > 0 ? len_second : FUNC3(second_str);
    char *ret = NULL;
    if (first_str_len + second_str_len > 0) {
        ret = FUNC0(1, first_str_len + second_str_len + 1);
        FUNC1(ret);
        FUNC2(ret, first_str, first_str_len);
        FUNC2(ret + first_str_len, second_str, second_str_len);
    }
    return ret;
}