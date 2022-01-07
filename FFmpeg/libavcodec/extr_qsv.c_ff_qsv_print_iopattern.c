
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mfx_iopattern; char* desc; } ;


 int AV_LOG_VERBOSE ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int av_log (void*,int ,char*,char const*,char const*) ;
 TYPE_1__* qsv_iopatterns ;

int ff_qsv_print_iopattern(void *log_ctx, int mfx_iopattern,
                           const char *extra_string)
{
    const char *desc = ((void*)0);

    for (int i = 0; i < FF_ARRAY_ELEMS(qsv_iopatterns); i++) {
        if (qsv_iopatterns[i].mfx_iopattern == mfx_iopattern) {
            desc = qsv_iopatterns[i].desc;
        }
    }
    if (!desc)
        desc = "unknown iopattern";

    av_log(log_ctx, AV_LOG_VERBOSE, "%s: %s\n", extra_string, desc);
    return 0;
}
