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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

bool FUNC2(const char *pre, const char *str)
{
    size_t lenpre = FUNC0(pre),
    lenstr = FUNC0(str);
    return lenstr < lenpre ? false : FUNC1(pre, str, lenpre) == 0;
}