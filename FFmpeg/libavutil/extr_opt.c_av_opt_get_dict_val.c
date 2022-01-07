
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ type; int offset; } ;
typedef TYPE_1__ AVOption ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 scalar_t__ AV_OPT_TYPE_DICT ;
 int EINVAL ;
 int av_dict_copy (int **,int *,int ) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;

int av_opt_get_dict_val(void *obj, const char *name, int search_flags, AVDictionary **out_val)
{
    void *target_obj;
    AVDictionary *src;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_DICT)
        return AVERROR(EINVAL);

    src = *(AVDictionary **)(((uint8_t *)target_obj) + o->offset);
    av_dict_copy(out_val, src, 0);

    return 0;
}
