
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; int tm_min; int tm_sec; int tm_year; int tm_mon; int tm_mday; } ;


 int INT_MAX ;
 scalar_t__ av_isspace (char const) ;
 int date_get_month (char const**) ;
 int date_get_num (char const**,int,int,int) ;

char *av_small_strptime(const char *p, const char *fmt, struct tm *dt)
{
    int c, val;

    while((c = *fmt++)) {
        if (c != '%') {
            if (av_isspace(c))
                for (; *p && av_isspace(*p); p++);
            else if (*p != c)
                return ((void*)0);
            else p++;
            continue;
        }

        c = *fmt++;
        switch(c) {
        case 'H':
        case 'J':
            val = date_get_num(&p, 0, c == 'H' ? 23 : INT_MAX, c == 'H' ? 2 : 4);

            if (val == -1)
                return ((void*)0);
            dt->tm_hour = val;
            break;
        case 'M':
            val = date_get_num(&p, 0, 59, 2);
            if (val == -1)
                return ((void*)0);
            dt->tm_min = val;
            break;
        case 'S':
            val = date_get_num(&p, 0, 59, 2);
            if (val == -1)
                return ((void*)0);
            dt->tm_sec = val;
            break;
        case 'Y':
            val = date_get_num(&p, 0, 9999, 4);
            if (val == -1)
                return ((void*)0);
            dt->tm_year = val - 1900;
            break;
        case 'm':
            val = date_get_num(&p, 1, 12, 2);
            if (val == -1)
                return ((void*)0);
            dt->tm_mon = val - 1;
            break;
        case 'd':
            val = date_get_num(&p, 1, 31, 2);
            if (val == -1)
                return ((void*)0);
            dt->tm_mday = val;
            break;
        case 'T':
            p = av_small_strptime(p, "%H:%M:%S", dt);
            if (!p)
                return ((void*)0);
            break;
        case 'b':
        case 'B':
        case 'h':
            val = date_get_month(&p);
            if (val == -1)
                return ((void*)0);
            dt->tm_mon = val;
            break;
        case '%':
            if (*p++ != '%')
                return ((void*)0);
            break;
        default:
            return ((void*)0);
        }
    }

    return (char*)p;
}
