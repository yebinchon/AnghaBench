
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVOptionType { ____Placeholder_AVOptionType } AVOptionType ;
struct TYPE_3__ {int type; int offset; int max; int min; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ERANGE ;
 int FFMAX (int ,int) ;
 int FFMIN (int ,int) ;
 int av_log (void*,int ,char*,...) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;

__attribute__((used)) static int set_format(void *obj, const char *name, int fmt, int search_flags,
                      enum AVOptionType type, const char *desc, int nb_fmts)
{
    void *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0,
                                     search_flags, &target_obj);
    int min, max;

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != type) {
        av_log(obj, AV_LOG_ERROR,
               "The value set by option '%s' is not a %s format", name, desc);
        return AVERROR(EINVAL);
    }

    min = FFMAX(o->min, -1);
    max = FFMIN(o->max, nb_fmts-1);

    if (fmt < min || fmt > max) {
        av_log(obj, AV_LOG_ERROR,
               "Value %d for parameter '%s' out of %s format range [%d - %d]\n",
               fmt, name, desc, min, max);
        return AVERROR(ERANGE);
    }
    *(int *)(((uint8_t *)target_obj) + o->offset) = fmt;
    return 0;
}
