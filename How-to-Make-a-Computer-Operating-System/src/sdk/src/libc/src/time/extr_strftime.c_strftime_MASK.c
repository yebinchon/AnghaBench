#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t tm_wday; size_t tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; int /*<<< orphan*/  tm_yday; } ;
typedef  TYPE_1__ tm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STRFT_ALTFORM ; 
 char** day_names ; 
 int FUNC1 (TYPE_1__*) ; 
 char** month_names ; 
 char** sday_names ; 
 char** smonth_names ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int) ; 

size_t FUNC3(char* s, size_t max, const char* format,
                const tm_t* tm){
    size_t ret = 0;
    int state;
    int flags; 
    char tmp[max];

    s[0] = '\0'; /* Initialize s */
    max--; /* Reserve space for '\0' at the end */
    state = flags = 0;

    for( ; *format != '\0'; format++){
        switch(state){
            case 0:
                if(*format != '%'){
                    if(ret < max){
                        s[ret++] = *format;
                        s[ret] = '\0';
                    } else {
                        s[ret] = '\0';
                        return 0;
                    }
                    break;
                }
                state++;
                format++;
            case 1:
                if(*format == '%'){
                    if(ret < max){
                        s[ret++] = '%';
                        s[ret] = '\0';
                    } else {
                        s[ret] = '\0';
                        return 0;
                    }
                    state = flags = 0;
                    break;
                }
                /* TODO: locale-independent, we need locales first :)
                if(*format == 'E'){
                } */
                if(*format == 'O'){
                    flags |= STRFT_ALTFORM;
                    /* TODO: use this */
                }
                /* TODO: glibc modifiers: _-0^# */
                state++;
            case 2:
                switch(*format){
                    case 'a':
                        FUNC0(sday_names[tm->tm_wday]);
                        break;
                    case 'A':
                        FUNC0(day_names[tm->tm_wday]);
                        break;
                    case 'h':
                    case 'b':
                        FUNC0(smonth_names[tm->tm_mon]);
                        break;
                    case 'B':
                        FUNC0(month_names[tm->tm_mon]);
                        break;
                    case 'c':
                        /* The preferred date and time representation for the current locale. */
                        FUNC3(tmp, max-ret, "%a %b %e %H:%M:%S %Z %Y", tm);
                        FUNC0(tmp);
                        break;
                    case 'C':
                        FUNC2(tmp, max, "%d", tm->tm_year / 100);
                        FUNC0(tmp);
                        break;
                    case 'd':
                        FUNC2(tmp, max, "%02d", tm->tm_mday);
                        FUNC0(tmp);
                        break;
                    case 'D':
                        FUNC3(tmp, max-ret, "%m/%d/%y", tm);
                        FUNC0(tmp);
                        break;
                    case 'e':
                        FUNC2(tmp, max, "%2d", tm->tm_mday);
                        FUNC0(tmp);
                        break;
                    case 'F':
                        FUNC3(tmp, max-ret, "%Y-%m-%d", tm);
                        FUNC0(tmp);
                        break;
                    case 'G':
/* The ISO 8601 year with century as a decimal number.  The 4-digit year corresponding to the ISO  week  number
   (see  %V).  This has the same format and value as %y, except that if the ISO week number belongs to the
   previous or next year, that year is used instead. (TZ)*/
                        break;
                    case 'g':
                        /* Like %G, but without century, that is, with a 2-digit year (00-99). (TZ) */
                        break;
                    case 'H':
                        FUNC2(tmp, max, "%02d", tm->tm_hour);
                        FUNC0(tmp);
                        break;
                    case 'I':
                        FUNC2(tmp, max, "%02d", tm->tm_hour % 12);
                        FUNC0(tmp);
                        break;
                    case 'j':
                        /* Day of the year, 001-366 */
                        FUNC2(tmp, max, "%03d", tm->tm_yday + 1);
                        FUNC0(tmp);
                        break;
                    case 'k':
                        FUNC2(tmp, max, "%2d", tm->tm_hour);
                        FUNC0(tmp);
                        break;
                    case 'l':
                        FUNC2(tmp, max, "%2d", tm->tm_hour % 12);
                        FUNC0(tmp);
                        break;
                    case 'm':
                        FUNC2(tmp, max, "%02d", tm->tm_mon + 1);
                        FUNC0(tmp);
                        break;
                    case 'M':
                        FUNC2(tmp, max, "%02d", tm->tm_min);
                        FUNC0(tmp);
                        break;
                    case 'n':
                        FUNC0("\n");
                        break;
                    case 'p':
                        if(tm->tm_hour >= 12){
                            FUNC0("PM");
                        }else{
                            FUNC0("AM");
                        }
                        break;
                    case 'P':
                        if(tm->tm_hour >= 12){
                            FUNC0("pm");
                        }else{
                            FUNC0("am");
                        }
                        break;
                    case 'r':
                        FUNC3(tmp, max-ret, "%I:%M:%S %p", tm);
                        FUNC0(tmp);
                        break;
                    case 'R':
                        FUNC3(tmp, max-ret, "%H:%M", tm);
                        FUNC0(tmp);
                        break;
                    case 's':
                        FUNC2(tmp, max, "%llu", FUNC1((tm_t*) tm));
                        FUNC0(tmp);
                        break;
                    case 'S':
                        FUNC2(tmp, max, "%02d", tm->tm_sec);
                        FUNC0(tmp);
                        break;
                    case 't':
                        FUNC0("\t");
                        break;
                    case 'T':
                        FUNC3(tmp, max-ret, "%H:%M:%S", tm);
                        FUNC0(tmp);
                        break;
                    case 'u':
                        /* Day of the week, 1-7, Monday=1 */
                        FUNC2(tmp, max, "%d", 1 + (tm->tm_wday + 6 ) % 7);
                        FUNC0(tmp);
                        break;
                    case 'U':
/* The week number of the current year as a decimal number, range 00 to 53, starting with the first  Sunday  as
   the first day of week 01.*/
                        break;
                    case 'V':
/*  The  ISO  8601:1988 week number of the current year as a decimal number, range 01 to 53, where week 1 is the
    first week that has at least 4 days in the current year, and with Monday as the first day of the week.   See
    also %U and %W. */
                        break;
                    case 'w':
                        /* Day of the week, 0-6, Sunday=0 */
                        FUNC2(tmp, max, "%d", tm->tm_wday);
                        FUNC0(tmp);
                        break;
                    case 'W':
/* The  week  number of the current year as a decimal number, range 00 to 53, starting with the first Monday as
   the first day of week 01. */
                        break;
                    case 'x':
                        /* The preferred date representation for the current locale without the time. */
                        FUNC3(tmp, max-ret, "%a %b %e %Z %Y", tm);
                        FUNC0(tmp);
                        break;
                    case 'X':
                        /* The preferred time representation for the current locale without the date. */
                        FUNC3(tmp, max-ret, "%H:%M:%S", tm);
                        FUNC0(tmp);
                        break;
                    case 'y':
                        /* The year as a decimal number without a century (range 00 to 99). */
                        FUNC2(tmp, max, "%02d", tm->tm_year % 100);
                        FUNC0(tmp);
                        break;
                    case 'Y':
                        /* The year as a decimal number including the century. */
                        FUNC2(tmp, max, "%d", tm->tm_year);
                        FUNC0(tmp);
                        break;
                    case 'z':
/* The  time-zone  as  hour  offset   from   GMT.    Required   to   emit   RFC 822-conformant   dates   (using
   "%a, %d %b %Y %H:%M:%S %z"). (GNU) */
                        break;
                    case 'Z':
                        /* The time zone or name or abbreviation. */
                        break;
                    default:
                        break;
                }
            state = flags = 0;
        }
    }

    s[ret] = '\0';

    return ret;
}