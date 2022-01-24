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
typedef  int uint64_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int /*<<< orphan*/  member_0; } ;
typedef  int int64_t ;

/* Variables and functions */
 void* FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (struct tm*) ; 

__attribute__((used)) static int64_t FUNC2(uint64_t timestamp)
{
    struct tm time = { 0 };
    int msecs;
    time.tm_year = (timestamp >> 48) - 1900;
    time.tm_mon  = (timestamp >> 40 & 0xFF) - 1;
    time.tm_mday = (timestamp >> 32 & 0xFF);
    time.tm_hour = (timestamp >> 24 & 0xFF);
    time.tm_min  = (timestamp >> 16 & 0xFF);
    time.tm_sec  = (timestamp >> 8  & 0xFF);
    msecs        = (timestamp & 0xFF) * 4;

    /* Clip values for legacy reasons. Maybe we should return error instead? */
    time.tm_mon  = FUNC0(time.tm_mon,  0, 11);
    time.tm_mday = FUNC0(time.tm_mday, 1, 31);
    time.tm_hour = FUNC0(time.tm_hour, 0, 23);
    time.tm_min  = FUNC0(time.tm_min,  0, 59);
    time.tm_sec  = FUNC0(time.tm_sec,  0, 59);
    msecs        = FUNC0(msecs, 0, 999);

    return (int64_t)FUNC1(&time) * 1000000 + msecs * 1000;
}