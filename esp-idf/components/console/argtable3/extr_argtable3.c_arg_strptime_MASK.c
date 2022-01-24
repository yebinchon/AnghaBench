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
struct tm {int tm_wday; int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_yday; int tm_min; int tm_sec; } ;

/* Variables and functions */
 int ALT_E ; 
 int ALT_O ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TM_YEAR_BASE ; 
 int /*<<< orphan*/ * abday ; 
 int /*<<< orphan*/ * abmon ; 
 int /*<<< orphan*/ * am_pm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int*,int,int) ; 
 int /*<<< orphan*/ * day ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * mon ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

char * FUNC6(const char *buf, const char *fmt, struct tm *tm)
{
    char c;
    const char *bp;
    size_t len = 0;
    int alt_format, i, split_year = 0;

    bp = buf;

    while ((c = *fmt) != '\0') {
        /* Clear `alternate' modifier prior to new conversion. */
        alt_format = 0;

        /* Eat up white-space. */
        if (FUNC4((int) c)) {
            while (FUNC4((int) *bp))
                bp++;

            fmt++;
            continue;
        }

        if ((c = *fmt++) != '%')
            goto literal;


again:
        switch (c = *fmt++)
        {
        case '%': /* "%%" is converted to "%". */
literal:
            if (c != *bp++)
                return (0);
            break;

        /*
         * "Alternative" modifiers. Just set the appropriate flag
         * and start over again.
         */
        case 'E': /* "%E?" alternative conversion modifier. */
            FUNC0(0);
            alt_format |= ALT_E;
            goto again;

        case 'O': /* "%O?" alternative conversion modifier. */
            FUNC0(0);
            alt_format |= ALT_O;
            goto again;

        /*
         * "Complex" conversion rules, implemented through recursion.
         */
        case 'c': /* Date and time, using the locale's format. */
            FUNC0(ALT_E);
            bp = FUNC6(bp, "%x %X", tm);
            if (!bp)
                return (0);
            break;

        case 'D': /* The date as "%m/%d/%y". */
            FUNC0(0);
            bp = FUNC6(bp, "%m/%d/%y", tm);
            if (!bp)
                return (0);
            break;

        case 'R': /* The time as "%H:%M". */
            FUNC0(0);
            bp = FUNC6(bp, "%H:%M", tm);
            if (!bp)
                return (0);
            break;

        case 'r': /* The time in 12-hour clock representation. */
            FUNC0(0);
            bp = FUNC6(bp, "%I:%M:%S %p", tm);
            if (!bp)
                return (0);
            break;

        case 'T': /* The time as "%H:%M:%S". */
            FUNC0(0);
            bp = FUNC6(bp, "%H:%M:%S", tm);
            if (!bp)
                return (0);
            break;

        case 'X': /* The time, using the locale's format. */
            FUNC0(ALT_E);
            bp = FUNC6(bp, "%H:%M:%S", tm);
            if (!bp)
                return (0);
            break;

        case 'x': /* The date, using the locale's format. */
            FUNC0(ALT_E);
            bp = FUNC6(bp, "%m/%d/%y", tm);
            if (!bp)
                return (0);
            break;

        /*
         * "Elementary" conversion rules.
         */
        case 'A': /* The day of week, using the locale's form. */
        case 'a':
            FUNC0(0);
            for (i = 0; i < 7; i++) {
                /* Full name. */
                len = FUNC5(day[i]);
                if (FUNC2(day[i], bp, len) == 0)
                    break;

                /* Abbreviated name. */
                len = FUNC5(abday[i]);
                if (FUNC2(abday[i], bp, len) == 0)
                    break;
            }

            /* Nothing matched. */
            if (i == 7)
                return (0);

            tm->tm_wday = i;
            bp += len;
            break;

        case 'B': /* The month, using the locale's form. */
        case 'b':
        case 'h':
            FUNC0(0);
            for (i = 0; i < 12; i++) {
                /* Full name. */
                len = FUNC5(mon[i]);
                if (FUNC2(mon[i], bp, len) == 0)
                    break;

                /* Abbreviated name. */
                len = FUNC5(abmon[i]);
                if (FUNC2(abmon[i], bp, len) == 0)
                    break;
            }

            /* Nothing matched. */
            if (i == 12)
                return (0);

            tm->tm_mon = i;
            bp += len;
            break;

        case 'C': /* The century number. */
            FUNC0(ALT_E);
            if (!(FUNC3(&bp, &i, 0, 99)))
                return (0);

            if (split_year) {
                tm->tm_year = (tm->tm_year % 100) + (i * 100);
            } else {
                tm->tm_year = i * 100;
                split_year = 1;
            }
            break;

        case 'd': /* The day of month. */
        case 'e':
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_mday, 1, 31)))
                return (0);
            break;

        case 'k': /* The hour (24-hour clock representation). */
            FUNC0(0);
        /* FALLTHROUGH */
        case 'H':
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_hour, 0, 23)))
                return (0);
            break;

        case 'l': /* The hour (12-hour clock representation). */
            FUNC0(0);
        /* FALLTHROUGH */
        case 'I':
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_hour, 1, 12)))
                return (0);
            if (tm->tm_hour == 12)
                tm->tm_hour = 0;
            break;

        case 'j': /* The day of year. */
            FUNC0(0);
            if (!(FUNC3(&bp, &i, 1, 366)))
                return (0);
            tm->tm_yday = i - 1;
            break;

        case 'M': /* The minute. */
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_min, 0, 59)))
                return (0);
            break;

        case 'm': /* The month. */
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &i, 1, 12)))
                return (0);
            tm->tm_mon = i - 1;
            break;

        case 'p': /* The locale's equivalent of AM/PM. */
            FUNC0(0);
            /* AM? */
            if (FUNC1(am_pm[0], bp) == 0) {
                if (tm->tm_hour > 11)
                    return (0);

                bp += FUNC5(am_pm[0]);
                break;
            }
            /* PM? */
            else if (FUNC1(am_pm[1], bp) == 0) {
                if (tm->tm_hour > 11)
                    return (0);

                tm->tm_hour += 12;
                bp += FUNC5(am_pm[1]);
                break;
            }

            /* Nothing matched. */
            return (0);

        case 'S': /* The seconds. */
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_sec, 0, 61)))
                return (0);
            break;

        case 'U': /* The week of year, beginning on sunday. */
        case 'W': /* The week of year, beginning on monday. */
            FUNC0(ALT_O);
            /*
             * XXX This is bogus, as we can not assume any valid
             * information present in the tm structure at this
             * point to calculate a real value, so just check the
             * range for now.
             */
            if (!(FUNC3(&bp, &i, 0, 53)))
                return (0);
            break;

        case 'w': /* The day of week, beginning on sunday. */
            FUNC0(ALT_O);
            if (!(FUNC3(&bp, &tm->tm_wday, 0, 6)))
                return (0);
            break;

        case 'Y': /* The year. */
            FUNC0(ALT_E);
            if (!(FUNC3(&bp, &i, 0, 9999)))
                return (0);

            tm->tm_year = i - TM_YEAR_BASE;
            break;

        case 'y': /* The year within 100 years of the epoch. */
            FUNC0(ALT_E | ALT_O);
            if (!(FUNC3(&bp, &i, 0, 99)))
                return (0);

            if (split_year) {
                tm->tm_year = ((tm->tm_year / 100) * 100) + i;
                break;
            }
            split_year = 1;
            if (i <= 68)
                tm->tm_year = i + 2000 - TM_YEAR_BASE;
            else
                tm->tm_year = i + 1900 - TM_YEAR_BASE;
            break;

        /*
         * Miscellaneous conversions.
         */
        case 'n': /* Any kind of white-space. */
        case 't':
            FUNC0(0);
            while (FUNC4((int) *bp))
                bp++;
            break;


        default: /* Unknown/unsupported conversion. */
            return (0);
        }


    }

    /* LINTED functional specification */
    return ((char *)bp);
}