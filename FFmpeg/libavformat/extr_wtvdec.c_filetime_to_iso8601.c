
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long time_t ;
struct tm {int dummy; } ;
typedef long long int64_t ;


 struct tm* gmtime_r (long long*,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int filetime_to_iso8601(char *buf, int buf_size, int64_t value)
{
    time_t t = (value / 10000000LL) - 11644473600LL;
    struct tm tmbuf;
    struct tm *tm = gmtime_r(&t, &tmbuf);
    if (!tm)
        return -1;
    if (!strftime(buf, buf_size, "%Y-%m-%d %H:%M:%S", tm))
        return -1;
    return 0;
}
