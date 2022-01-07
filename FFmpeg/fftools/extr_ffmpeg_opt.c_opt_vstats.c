
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef int filename ;


 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*,int ) ;
 int errno ;
 int exit_program (int) ;
 struct tm* localtime (int *) ;
 int opt_vstats_file (int *,char const*,char*) ;
 int snprintf (char*,int,char*,int,int,int ) ;
 int strerror (int ) ;
 int time (int *) ;

__attribute__((used)) static int opt_vstats(void *optctx, const char *opt, const char *arg)
{
    char filename[40];
    time_t today2 = time(((void*)0));
    struct tm *today = localtime(&today2);

    if (!today) {
        av_log(((void*)0), AV_LOG_FATAL, "Unable to get current time: %s\n", strerror(errno));
        exit_program(1);
    }

    snprintf(filename, sizeof(filename), "vstats_%02d%02d%02d.log", today->tm_hour, today->tm_min,
             today->tm_sec);
    return opt_vstats_file(((void*)0), opt, filename);
}
