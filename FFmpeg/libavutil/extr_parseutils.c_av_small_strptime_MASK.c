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
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_year; int tm_mon; int tm_mday; } ;

/* Variables and functions */
 int INT_MAX ; 
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const**) ; 
 int FUNC2 (char const**,int,int,int) ; 

char *FUNC3(const char *p, const char *fmt, struct tm *dt)
{
    int c, val;

    while((c = *fmt++)) {
        if (c != '%') {
            if (FUNC0(c))
                for (; *p && FUNC0(*p); p++);
            else if (*p != c)
                return NULL;
            else p++;
            continue;
        }

        c = *fmt++;
        switch(c) {
        case 'H':
        case 'J':
            val = FUNC2(&p, 0, c == 'H' ? 23 : INT_MAX, c == 'H' ? 2 : 4);

            if (val == -1)
                return NULL;
            dt->tm_hour = val;
            break;
        case 'M':
            val = FUNC2(&p, 0, 59, 2);
            if (val == -1)
                return NULL;
            dt->tm_min = val;
            break;
        case 'S':
            val = FUNC2(&p, 0, 59, 2);
            if (val == -1)
                return NULL;
            dt->tm_sec = val;
            break;
        case 'Y':
            val = FUNC2(&p, 0, 9999, 4);
            if (val == -1)
                return NULL;
            dt->tm_year = val - 1900;
            break;
        case 'm':
            val = FUNC2(&p, 1, 12, 2);
            if (val == -1)
                return NULL;
            dt->tm_mon = val - 1;
            break;
        case 'd':
            val = FUNC2(&p, 1, 31, 2);
            if (val == -1)
                return NULL;
            dt->tm_mday = val;
            break;
        case 'T':
            p = FUNC3(p, "%H:%M:%S", dt);
            if (!p)
                return NULL;
            break;
        case 'b':
        case 'B':
        case 'h':
            val = FUNC1(&p);
            if (val == -1)
                return NULL;
            dt->tm_mon = val;
            break;
        case '%':
            if (*p++ != '%')
                return NULL;
            break;
        default:
            return NULL;
        }
    }

    return (char*)p;
}