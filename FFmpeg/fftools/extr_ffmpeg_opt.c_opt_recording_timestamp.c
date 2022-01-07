
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int int64_t ;
typedef int buf ;
typedef int OptionsContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*,char const*) ;
 struct tm* gmtime (int *) ;
 int options ;
 int parse_option (int *,char*,char*,int ) ;
 int parse_time_or_die (char const*,char const*,int ) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int opt_recording_timestamp(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    char buf[128];
    int64_t recording_timestamp = parse_time_or_die(opt, arg, 0) / 1E6;
    struct tm time = *gmtime((time_t*)&recording_timestamp);
    if (!strftime(buf, sizeof(buf), "creation_time=%Y-%m-%dT%H:%M:%S%z", &time))
        return -1;
    parse_option(o, "metadata", buf, options);

    av_log(((void*)0), AV_LOG_WARNING, "%s is deprecated, set the 'creation_time' metadata "
                                 "tag instead.\n", opt);
    return 0;
}
