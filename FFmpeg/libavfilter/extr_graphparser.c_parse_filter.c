
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterGraph ;
typedef int AVFilterContext ;


 int av_free (char*) ;
 char* av_get_token (char const**,char*) ;
 int create_filter (int **,int *,int,char*,char*,void*) ;

__attribute__((used)) static int parse_filter(AVFilterContext **filt_ctx, const char **buf, AVFilterGraph *graph,
                        int index, void *log_ctx)
{
    char *opts = ((void*)0);
    char *name = av_get_token(buf, "=,;[");
    int ret;

    if (**buf == '=') {
        (*buf)++;
        opts = av_get_token(buf, "[],;");
    }

    ret = create_filter(filt_ctx, graph, index, name, opts, log_ctx);
    av_free(name);
    av_free(opts);
    return ret;
}
