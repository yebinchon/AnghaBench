
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long LADSPA_Data ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_sscanf (char const*,char*,unsigned long*) ;
 int set_control (int *,unsigned long,unsigned long) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    LADSPA_Data value;
    unsigned long port;

    if (av_sscanf(cmd, "c%ld", &port) + av_sscanf(args, "%f", &value) != 2)
        return AVERROR(EINVAL);

    return set_control(ctx, port, value);
}
