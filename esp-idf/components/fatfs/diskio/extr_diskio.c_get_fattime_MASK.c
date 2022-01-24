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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_mday; scalar_t__ tm_mon; } ;
typedef  int WORD ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

DWORD FUNC2(void)
{
    time_t t = FUNC1(NULL);
    struct tm tmr;
    FUNC0(&t, &tmr);
    int year = tmr.tm_year < 80 ? 0 : tmr.tm_year - 80;
    return    ((DWORD)(year) << 25)
            | ((DWORD)(tmr.tm_mon + 1) << 21)
            | ((DWORD)tmr.tm_mday << 16)
            | (WORD)(tmr.tm_hour << 11)
            | (WORD)(tmr.tm_min << 5)
            | (WORD)(tmr.tm_sec >> 1);
}