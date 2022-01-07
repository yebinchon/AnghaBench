
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ type; int offset; int name; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_OPT_TYPE_IMAGE_SIZE ;
 int EINVAL ;
 int av_log (void*,int ,char*,int,...) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;

int av_opt_set_image_size(void *obj, const char *name, int w, int h, int search_flags)
{
    void *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_IMAGE_SIZE) {
        av_log(obj, AV_LOG_ERROR,
               "The value set by option '%s' is not an image size.\n", o->name);
        return AVERROR(EINVAL);
    }
    if (w<0 || h<0) {
        av_log(obj, AV_LOG_ERROR,
               "Invalid negative size value %dx%d for size '%s'\n", w, h, o->name);
        return AVERROR(EINVAL);
    }
    *(int *)(((uint8_t *)target_obj) + o->offset) = w;
    *(int *)(((uint8_t *)target_obj+sizeof(int)) + o->offset) = h;
    return 0;
}
