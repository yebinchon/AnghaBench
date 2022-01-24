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
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_isdst; int /*<<< orphan*/  member_0; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 int FUNC1 (char const* const*) ; 
 int INT64_MAX ; 
 int INT64_MIN ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 char* FUNC5 (char const*,char const* const,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int FUNC7 (struct tm*) ; 
 scalar_t__ errno ; 
 struct tm* FUNC8 (int*,struct tm*) ; 
 struct tm* FUNC9 (int*,struct tm*) ; 
 int FUNC10 (struct tm*) ; 
 int FUNC11 (char const*,char**,int) ; 

int FUNC12(int64_t *timeval, const char *timestr, int duration)
{
    const char *p, *q;
    int64_t t, now64;
    time_t now;
    struct tm dt = { 0 }, tmbuf;
    int today = 0, negative = 0, microseconds = 0, suffix = 1000000;
    int i;
    static const char * const date_fmt[] = {
        "%Y - %m - %d",
        "%Y%m%d",
    };
    static const char * const time_fmt[] = {
        "%H:%M:%S",
        "%H%M%S",
    };
    static const char * const tz_fmt[] = {
        "%H:%M",
        "%H%M",
        "%H",
    };

    p = timestr;
    q = NULL;
    *timeval = INT64_MIN;
    if (!duration) {
        now64 = FUNC2();
        now = now64 / 1000000;

        if (!FUNC6(timestr, "now")) {
            *timeval = now64;
            return 0;
        }

        /* parse the year-month-day part */
        for (i = 0; i < FUNC1(date_fmt); i++) {
            q = FUNC5(p, date_fmt[i], &dt);
            if (q)
                break;
        }

        /* if the year-month-day part is missing, then take the
         * current year-month-day time */
        if (!q) {
            today = 1;
            q = p;
        }
        p = q;

        if (*p == 'T' || *p == 't')
            p++;
        else
            while (FUNC4(*p))
                p++;

        /* parse the hour-minute-second part */
        for (i = 0; i < FUNC1(time_fmt); i++) {
            q = FUNC5(p, time_fmt[i], &dt);
            if (q)
                break;
        }
    } else {
        /* parse timestr as a duration */
        if (p[0] == '-') {
            negative = 1;
            ++p;
        }
        /* parse timestr as HH:MM:SS */
        q = FUNC5(p, "%J:%M:%S", &dt);
        if (!q) {
            /* parse timestr as MM:SS */
            q = FUNC5(p, "%M:%S", &dt);
            dt.tm_hour = 0;
        }
        if (!q) {
            char *o;
            /* parse timestr as S+ */
            errno = 0;
            t = FUNC11(p, &o, 10);
            if (o == p) /* the parsing didn't succeed */
                return FUNC0(EINVAL);
            if (errno == ERANGE)
                return FUNC0(ERANGE);
            q = o;
        } else {
            t = dt.tm_hour * 3600 + dt.tm_min * 60 + dt.tm_sec;
        }
    }

    /* Now we have all the fields that we can get */
    if (!q)
        return FUNC0(EINVAL);

    /* parse the .m... part */
    if (*q == '.') {
        int n;
        q++;
        for (n = 100000; n >= 1; n /= 10, q++) {
            if (!FUNC3(*q))
                break;
            microseconds += n * (*q - '0');
        }
        while (FUNC3(*q))
            q++;
    }

    if (duration) {
        if (q[0] == 'm' && q[1] == 's') {
            suffix = 1000;
            microseconds /= 1000;
            q += 2;
        } else if (q[0] == 'u' && q[1] == 's') {
            suffix = 1;
            microseconds = 0;
            q += 2;
        } else if (*q == 's')
            q++;
    } else {
        int is_utc = *q == 'Z' || *q == 'z';
        int tzoffset = 0;
        q += is_utc;
        if (!today && !is_utc && (*q == '+' || *q == '-')) {
            struct tm tz = { 0 };
            int sign = (*q == '+' ? -1 : 1);
            q++;
            p = q;
            for (i = 0; i < FUNC1(tz_fmt); i++) {
                q = FUNC5(p, tz_fmt[i], &tz);
                if (q)
                    break;
            }
            if (!q)
                return FUNC0(EINVAL);
            tzoffset = sign * (tz.tm_hour * 60 + tz.tm_min) * 60;
            is_utc = 1;
        }
        if (today) { /* fill in today's date */
            struct tm dt2 = is_utc ? *FUNC8(&now, &tmbuf) : *FUNC9(&now, &tmbuf);
            dt2.tm_hour = dt.tm_hour;
            dt2.tm_min  = dt.tm_min;
            dt2.tm_sec  = dt.tm_sec;
            dt = dt2;
        }
        dt.tm_isdst = is_utc ? 0 : -1;
        t = is_utc ? FUNC7(&dt) : FUNC10(&dt);
        t += tzoffset;
    }

    /* Check that we are at the end of the string */
    if (*q)
        return FUNC0(EINVAL);

    if (INT64_MAX / suffix < t)
        return FUNC0(ERANGE);
    t *= suffix;
    if (INT64_MAX - microseconds < t)
        return FUNC0(ERANGE);
    t += microseconds;
    *timeval = negative ? -t : t;
    return 0;
}