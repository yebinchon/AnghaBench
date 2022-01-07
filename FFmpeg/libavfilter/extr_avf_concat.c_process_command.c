
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_VERBOSE ;
 int ENOSYS ;
 int av_log (int *,int ,char*) ;
 int flush_segment (int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    int ret = AVERROR(ENOSYS);

    if (!strcmp(cmd, "next")) {
        av_log(ctx, AV_LOG_VERBOSE, "Command received: next\n");
        return flush_segment(ctx);
    }

    return ret;
}
