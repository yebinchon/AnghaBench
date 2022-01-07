
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int avfilter_config_links (int *) ;
 int parse_mapping (int *,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_command(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    if (!strcmp(cmd, "map")) {
        int ret = parse_mapping(ctx, args);

        if (ret < 0)
            return ret;
        return avfilter_config_links(ctx);
    }
    return AVERROR(ENOSYS);
}
