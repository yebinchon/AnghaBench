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
typedef  long long time_t ;
struct tm {int dummy; } ;
typedef  long long int64_t ;

/* Variables and functions */
 struct tm* FUNC0 (long long*,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static int FUNC2(char *buf, int buf_size, int64_t value)
{
    time_t t = (value / 10000000LL) - 11644473600LL;
    struct tm tmbuf;
    struct tm *tm = FUNC0(&t, &tmbuf);
    if (!tm)
        return -1;
    if (!FUNC1(buf, buf_size, "%Y-%m-%d %H:%M:%S", tm))
        return -1;
    return 0;
}