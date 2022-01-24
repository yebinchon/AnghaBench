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
typedef  double time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 struct tm* FUNC1 (double*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static int FUNC3(char *buf, int buf_size, int64_t value)
{
    time_t t = (FUNC0(value) - 25569.0) * 86400;
    struct tm tmbuf;
    struct tm *tm= FUNC1(&t, &tmbuf);
    if (!tm)
        return -1;
    if (!FUNC2(buf, buf_size, "%Y-%m-%d %H:%M:%S", tm))
        return -1;
    return 0;
}