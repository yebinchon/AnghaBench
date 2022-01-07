
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int int64_t ;


 int INT64_C (int) ;
 int av_small_strptime (char const*,char*,struct tm*) ;
 int av_timegm (struct tm*) ;
 int memset (struct tm*,int ,int) ;

__attribute__((used)) static int64_t ftp_parse_date(const char *date)
{
    struct tm tv;
    memset(&tv, 0, sizeof(struct tm));
    av_small_strptime(date, "%Y%m%d%H%M%S", &tv);
    return INT64_C(1000000) * av_timegm(&tv);
}
