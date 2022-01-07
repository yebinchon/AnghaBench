
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;


 int AV_LOG_WARNING ;
 int INT_MAX ;
 int OPT_INT64 ;
 int RLIMIT_CPU ;
 int av_log (int *,int ,char*,char const*) ;
 int parse_number_or_die (char const*,char const*,int ,int ,int ) ;
 int perror (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

int opt_timelimit(void *optctx, const char *opt, const char *arg)
{






    av_log(((void*)0), AV_LOG_WARNING, "-%s not implemented on this OS\n", opt);

    return 0;
}
