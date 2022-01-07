
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char const*) ;
 int exit (int) ;

__attribute__((used)) static void fatal_error(const char *tag)
{
    av_log(((void*)0), AV_LOG_ERROR, "Fatal error: %s\n", tag);
    exit(1);
}
