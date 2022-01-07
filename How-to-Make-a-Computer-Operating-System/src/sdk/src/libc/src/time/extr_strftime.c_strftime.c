
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t tm_wday; size_t tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_yday; } ;
typedef TYPE_1__ tm_t ;


 int APPEND (char*) ;
 int STRFT_ALTFORM ;
 char** day_names ;
 int mktime (TYPE_1__*) ;
 char** month_names ;
 char** sday_names ;
 char** smonth_names ;
 int snprintf (char*,size_t,char*,int) ;

size_t strftime(char* s, size_t max, const char* format,
                const tm_t* tm){
    size_t ret = 0;
    int state;
    int flags;
    char tmp[max];

    s[0] = '\0';
    max--;
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



                if(*format == 'O'){
                    flags |= STRFT_ALTFORM;

                }

                state++;
            case 2:
                switch(*format){
                    case 'a':
                        APPEND(sday_names[tm->tm_wday]);
                        break;
                    case 'A':
                        APPEND(day_names[tm->tm_wday]);
                        break;
                    case 'h':
                    case 'b':
                        APPEND(smonth_names[tm->tm_mon]);
                        break;
                    case 'B':
                        APPEND(month_names[tm->tm_mon]);
                        break;
                    case 'c':

                        strftime(tmp, max-ret, "%a %b %e %H:%M:%S %Z %Y", tm);
                        APPEND(tmp);
                        break;
                    case 'C':
                        snprintf(tmp, max, "%d", tm->tm_year / 100);
                        APPEND(tmp);
                        break;
                    case 'd':
                        snprintf(tmp, max, "%02d", tm->tm_mday);
                        APPEND(tmp);
                        break;
                    case 'D':
                        strftime(tmp, max-ret, "%m/%d/%y", tm);
                        APPEND(tmp);
                        break;
                    case 'e':
                        snprintf(tmp, max, "%2d", tm->tm_mday);
                        APPEND(tmp);
                        break;
                    case 'F':
                        strftime(tmp, max-ret, "%Y-%m-%d", tm);
                        APPEND(tmp);
                        break;
                    case 'G':



                        break;
                    case 'g':

                        break;
                    case 'H':
                        snprintf(tmp, max, "%02d", tm->tm_hour);
                        APPEND(tmp);
                        break;
                    case 'I':
                        snprintf(tmp, max, "%02d", tm->tm_hour % 12);
                        APPEND(tmp);
                        break;
                    case 'j':

                        snprintf(tmp, max, "%03d", tm->tm_yday + 1);
                        APPEND(tmp);
                        break;
                    case 'k':
                        snprintf(tmp, max, "%2d", tm->tm_hour);
                        APPEND(tmp);
                        break;
                    case 'l':
                        snprintf(tmp, max, "%2d", tm->tm_hour % 12);
                        APPEND(tmp);
                        break;
                    case 'm':
                        snprintf(tmp, max, "%02d", tm->tm_mon + 1);
                        APPEND(tmp);
                        break;
                    case 'M':
                        snprintf(tmp, max, "%02d", tm->tm_min);
                        APPEND(tmp);
                        break;
                    case 'n':
                        APPEND("\n");
                        break;
                    case 'p':
                        if(tm->tm_hour >= 12){
                            APPEND("PM");
                        }else{
                            APPEND("AM");
                        }
                        break;
                    case 'P':
                        if(tm->tm_hour >= 12){
                            APPEND("pm");
                        }else{
                            APPEND("am");
                        }
                        break;
                    case 'r':
                        strftime(tmp, max-ret, "%I:%M:%S %p", tm);
                        APPEND(tmp);
                        break;
                    case 'R':
                        strftime(tmp, max-ret, "%H:%M", tm);
                        APPEND(tmp);
                        break;
                    case 's':
                        snprintf(tmp, max, "%llu", mktime((tm_t*) tm));
                        APPEND(tmp);
                        break;
                    case 'S':
                        snprintf(tmp, max, "%02d", tm->tm_sec);
                        APPEND(tmp);
                        break;
                    case 't':
                        APPEND("\t");
                        break;
                    case 'T':
                        strftime(tmp, max-ret, "%H:%M:%S", tm);
                        APPEND(tmp);
                        break;
                    case 'u':

                        snprintf(tmp, max, "%d", 1 + (tm->tm_wday + 6 ) % 7);
                        APPEND(tmp);
                        break;
                    case 'U':


                        break;
                    case 'V':



                        break;
                    case 'w':

                        snprintf(tmp, max, "%d", tm->tm_wday);
                        APPEND(tmp);
                        break;
                    case 'W':


                        break;
                    case 'x':

                        strftime(tmp, max-ret, "%a %b %e %Z %Y", tm);
                        APPEND(tmp);
                        break;
                    case 'X':

                        strftime(tmp, max-ret, "%H:%M:%S", tm);
                        APPEND(tmp);
                        break;
                    case 'y':

                        snprintf(tmp, max, "%02d", tm->tm_year % 100);
                        APPEND(tmp);
                        break;
                    case 'Y':

                        snprintf(tmp, max, "%d", tm->tm_year);
                        APPEND(tmp);
                        break;
                    case 'z':


                        break;
                    case 'Z':

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
