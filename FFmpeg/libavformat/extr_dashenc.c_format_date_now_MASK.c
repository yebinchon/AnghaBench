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
typedef  int time_t ;
struct tm {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 () ; 
 struct tm* FUNC1 (int const*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(char *buf, int size)
{
    struct tm *ptm, tmbuf;
    int64_t time_us = FUNC0();
    int64_t time_ms = time_us / 1000;
    const time_t time_s = time_ms / 1000;
    int millisec = time_ms - (time_s * 1000);
    ptm = FUNC1(&time_s, &tmbuf);
    if (ptm) {
        int len;
        if (!FUNC3(buf, size, "%Y-%m-%dT%H:%M:%S", ptm)) {
            buf[0] = '\0';
            return;
        }
        len = FUNC4(buf);
        FUNC2(buf + len, size - len, ".%03dZ", millisec);
    }
}