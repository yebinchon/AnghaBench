
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int buf ;
typedef int AVBPrint ;


 int av_bprintf (int *,char*,char*) ;
 int localtime_r (int *,struct tm*) ;
 scalar_t__ strftime (char*,int,char const*,struct tm*) ;
 int time (int ) ;

__attribute__((used)) static int insert_datetime(AVBPrint *dst, const char *in, const char *arg)
{
    char buf[16] = {0};
    time_t now = time(0);
    struct tm ltime;

    localtime_r(&now, &ltime);
    if (strftime(buf, sizeof(buf), arg, &ltime))
        av_bprintf(dst, "%s", buf);
    return 0;
}
