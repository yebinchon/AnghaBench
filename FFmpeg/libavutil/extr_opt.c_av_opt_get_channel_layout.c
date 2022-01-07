
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ type; int offset; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_OPT_TYPE_CHANNEL_LAYOUT ;
 int EINVAL ;
 int av_log (void*,int ,char*,char const*) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;

int av_opt_get_channel_layout(void *obj, const char *name, int search_flags, int64_t *cl)
{
    void *dst, *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);
    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_CHANNEL_LAYOUT) {
        av_log(obj, AV_LOG_ERROR,
               "The value for option '%s' is not a channel layout.\n", name);
        return AVERROR(EINVAL);
    }

    dst = ((uint8_t*)target_obj) + o->offset;
    *cl = *(int64_t *)dst;
    return 0;
}
