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
typedef  int uint32_t ;
struct timezone {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval*,struct timezone*) ; 

uint32_t FUNC1(void)
{
    struct timeval tv;
    struct timezone tz;
    if (FUNC0(&tv, &tz) == 0) {
        return (tv.tv_sec * 1000) + (tv.tv_usec / 1000);
    }
    return 0;
}