
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_QUIET ;
 int av_log (int *,int ,char*,char*) ;
 int term_exit_sigsafe () ;

void term_exit(void)
{
    av_log(((void*)0), AV_LOG_QUIET, "%s", "");
    term_exit_sigsafe();
}
