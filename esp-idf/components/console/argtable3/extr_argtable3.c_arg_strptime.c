
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_yday; int tm_min; int tm_sec; } ;


 int ALT_E ;
 int ALT_O ;
 int LEGAL_ALT (int) ;
 int TM_YEAR_BASE ;
 int * abday ;
 int * abmon ;
 int * am_pm ;
 int arg_strcasecmp (int ,char const*) ;
 int arg_strncasecmp (int ,char const*,size_t) ;
 int conv_num (char const**,int*,int,int) ;
 int * day ;
 scalar_t__ isspace (int) ;
 int * mon ;
 size_t strlen (int ) ;

char * arg_strptime(const char *buf, const char *fmt, struct tm *tm)
{
    char c;
    const char *bp;
    size_t len = 0;
    int alt_format, i, split_year = 0;

    bp = buf;

    while ((c = *fmt) != '\0') {

        alt_format = 0;


        if (isspace((int) c)) {
            while (isspace((int) *bp))
                bp++;

            fmt++;
            continue;
        }

        if ((c = *fmt++) != '%')
            goto literal;


again:
        switch (c = *fmt++)
        {
        case '%':
literal:
            if (c != *bp++)
                return (0);
            break;





        case 'E':
            LEGAL_ALT(0);
            alt_format |= ALT_E;
            goto again;

        case 'O':
            LEGAL_ALT(0);
            alt_format |= ALT_O;
            goto again;




        case 'c':
            LEGAL_ALT(ALT_E);
            bp = arg_strptime(bp, "%x %X", tm);
            if (!bp)
                return (0);
            break;

        case 'D':
            LEGAL_ALT(0);
            bp = arg_strptime(bp, "%m/%d/%y", tm);
            if (!bp)
                return (0);
            break;

        case 'R':
            LEGAL_ALT(0);
            bp = arg_strptime(bp, "%H:%M", tm);
            if (!bp)
                return (0);
            break;

        case 'r':
            LEGAL_ALT(0);
            bp = arg_strptime(bp, "%I:%M:%S %p", tm);
            if (!bp)
                return (0);
            break;

        case 'T':
            LEGAL_ALT(0);
            bp = arg_strptime(bp, "%H:%M:%S", tm);
            if (!bp)
                return (0);
            break;

        case 'X':
            LEGAL_ALT(ALT_E);
            bp = arg_strptime(bp, "%H:%M:%S", tm);
            if (!bp)
                return (0);
            break;

        case 'x':
            LEGAL_ALT(ALT_E);
            bp = arg_strptime(bp, "%m/%d/%y", tm);
            if (!bp)
                return (0);
            break;




        case 'A':
        case 'a':
            LEGAL_ALT(0);
            for (i = 0; i < 7; i++) {

                len = strlen(day[i]);
                if (arg_strncasecmp(day[i], bp, len) == 0)
                    break;


                len = strlen(abday[i]);
                if (arg_strncasecmp(abday[i], bp, len) == 0)
                    break;
            }


            if (i == 7)
                return (0);

            tm->tm_wday = i;
            bp += len;
            break;

        case 'B':
        case 'b':
        case 'h':
            LEGAL_ALT(0);
            for (i = 0; i < 12; i++) {

                len = strlen(mon[i]);
                if (arg_strncasecmp(mon[i], bp, len) == 0)
                    break;


                len = strlen(abmon[i]);
                if (arg_strncasecmp(abmon[i], bp, len) == 0)
                    break;
            }


            if (i == 12)
                return (0);

            tm->tm_mon = i;
            bp += len;
            break;

        case 'C':
            LEGAL_ALT(ALT_E);
            if (!(conv_num(&bp, &i, 0, 99)))
                return (0);

            if (split_year) {
                tm->tm_year = (tm->tm_year % 100) + (i * 100);
            } else {
                tm->tm_year = i * 100;
                split_year = 1;
            }
            break;

        case 'd':
        case 'e':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_mday, 1, 31)))
                return (0);
            break;

        case 'k':
            LEGAL_ALT(0);

        case 'H':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_hour, 0, 23)))
                return (0);
            break;

        case 'l':
            LEGAL_ALT(0);

        case 'I':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_hour, 1, 12)))
                return (0);
            if (tm->tm_hour == 12)
                tm->tm_hour = 0;
            break;

        case 'j':
            LEGAL_ALT(0);
            if (!(conv_num(&bp, &i, 1, 366)))
                return (0);
            tm->tm_yday = i - 1;
            break;

        case 'M':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_min, 0, 59)))
                return (0);
            break;

        case 'm':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &i, 1, 12)))
                return (0);
            tm->tm_mon = i - 1;
            break;

        case 'p':
            LEGAL_ALT(0);

            if (arg_strcasecmp(am_pm[0], bp) == 0) {
                if (tm->tm_hour > 11)
                    return (0);

                bp += strlen(am_pm[0]);
                break;
            }

            else if (arg_strcasecmp(am_pm[1], bp) == 0) {
                if (tm->tm_hour > 11)
                    return (0);

                tm->tm_hour += 12;
                bp += strlen(am_pm[1]);
                break;
            }


            return (0);

        case 'S':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_sec, 0, 61)))
                return (0);
            break;

        case 'U':
        case 'W':
            LEGAL_ALT(ALT_O);






            if (!(conv_num(&bp, &i, 0, 53)))
                return (0);
            break;

        case 'w':
            LEGAL_ALT(ALT_O);
            if (!(conv_num(&bp, &tm->tm_wday, 0, 6)))
                return (0);
            break;

        case 'Y':
            LEGAL_ALT(ALT_E);
            if (!(conv_num(&bp, &i, 0, 9999)))
                return (0);

            tm->tm_year = i - TM_YEAR_BASE;
            break;

        case 'y':
            LEGAL_ALT(ALT_E | ALT_O);
            if (!(conv_num(&bp, &i, 0, 99)))
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




        case 'n':
        case 't':
            LEGAL_ALT(0);
            while (isspace((int) *bp))
                bp++;
            break;


        default:
            return (0);
        }


    }


    return ((char *)bp);
}
