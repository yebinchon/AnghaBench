
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfxStatus ;


 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,char const*,char const*,int ) ;
 int ff_qsv_map_error (int ,char const**) ;

int ff_qsv_print_error(void *log_ctx, mfxStatus err,
                       const char *error_string)
{
    const char *desc;
    int ret;
    ret = ff_qsv_map_error(err, &desc);
    av_log(log_ctx, AV_LOG_ERROR, "%s: %s (%d)\n", error_string, desc, err);
    return ret;
}
