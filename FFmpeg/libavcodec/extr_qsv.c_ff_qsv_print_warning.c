
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfxStatus ;


 int AV_LOG_WARNING ;
 int av_log (void*,int ,char*,char const*,char const*,int ) ;
 int ff_qsv_map_error (int ,char const**) ;

int ff_qsv_print_warning(void *log_ctx, mfxStatus err,
                         const char *warning_string)
{
    const char *desc;
    int ret;
    ret = ff_qsv_map_error(err, &desc);
    av_log(log_ctx, AV_LOG_WARNING, "%s: %s (%d)\n", warning_string, desc, err);
    return ret;
}
