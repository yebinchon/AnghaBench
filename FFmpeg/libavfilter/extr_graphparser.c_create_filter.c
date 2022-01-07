
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int name2 ;
struct TYPE_4__ {char* scale_sws_opts; } ;
typedef TYPE_1__ AVFilterGraph ;
typedef int AVFilterContext ;
typedef int AVFilter ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 char* av_asprintf (char*,char const*,char*) ;
 int av_free (char*) ;
 int av_log (void*,int ,char*,...) ;
 int av_strlcpy (char*,char const*,int) ;
 int avfilter_free (int *) ;
 int * avfilter_get_by_name (char const*) ;
 int * avfilter_graph_alloc_filter (TYPE_1__*,int const*,char const*) ;
 int avfilter_init_str (int *,char const*) ;
 int snprintf (char*,int,char*,char const*,int) ;
 int strcmp (char const*,char*) ;
 int strstr (char const*,char*) ;

__attribute__((used)) static int create_filter(AVFilterContext **filt_ctx, AVFilterGraph *ctx, int index,
                         const char *name, const char *args, void *log_ctx)
{
    const AVFilter *filt;
    char name2[30];
    const char *inst_name = ((void*)0), *filt_name = ((void*)0);
    char *tmp_args = ((void*)0);
    int ret, k;

    av_strlcpy(name2, name, sizeof(name2));

    for (k = 0; name2[k]; k++) {
        if (name2[k] == '@' && name[k+1]) {
            name2[k] = 0;
            inst_name = name;
            filt_name = name2;
            break;
        }
    }

    if (!inst_name) {
        snprintf(name2, sizeof(name2), "Parsed_%s_%d", name, index);
        inst_name = name2;
        filt_name = name;
    }

    filt = avfilter_get_by_name(filt_name);

    if (!filt) {
        av_log(log_ctx, AV_LOG_ERROR,
               "No such filter: '%s'\n", filt_name);
        return AVERROR(EINVAL);
    }

    *filt_ctx = avfilter_graph_alloc_filter(ctx, filt, inst_name);
    if (!*filt_ctx) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Error creating filter '%s'\n", filt_name);
        return AVERROR(ENOMEM);
    }

    if (!strcmp(filt_name, "scale") && (!args || !strstr(args, "flags")) &&
        ctx->scale_sws_opts) {
        if (args) {
            tmp_args = av_asprintf("%s:%s",
                    args, ctx->scale_sws_opts);
            if (!tmp_args)
                return AVERROR(ENOMEM);
            args = tmp_args;
        } else
            args = ctx->scale_sws_opts;
    }

    ret = avfilter_init_str(*filt_ctx, args);
    if (ret < 0) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Error initializing filter '%s'", filt_name);
        if (args)
            av_log(log_ctx, AV_LOG_ERROR, " with args '%s'", args);
        av_log(log_ctx, AV_LOG_ERROR, "\n");
        avfilter_free(*filt_ctx);
        *filt_ctx = ((void*)0);
    }

    av_free(tmp_args);
    return ret;
}
