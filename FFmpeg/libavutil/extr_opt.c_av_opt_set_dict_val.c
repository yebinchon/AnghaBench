
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int flags; int offset; } ;
typedef TYPE_1__ AVOption ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_OPT_FLAG_READONLY ;
 int EINVAL ;
 int av_dict_copy (int **,int const*,int ) ;
 int av_dict_free (int **) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;

int av_opt_set_dict_val(void *obj, const char *name, const AVDictionary *val,
                        int search_flags)
{
    void *target_obj;
    AVDictionary **dst;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->flags & AV_OPT_FLAG_READONLY)
        return AVERROR(EINVAL);

    dst = (AVDictionary **)(((uint8_t *)target_obj) + o->offset);
    av_dict_free(dst);
    av_dict_copy(dst, val, 0);

    return 0;
}
