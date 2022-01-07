
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int offset; scalar_t__ type; } ;
typedef TYPE_1__ AVOption ;
typedef int AVDictionary ;
typedef int const AVClass ;


 int AVERROR (int ) ;
 scalar_t__ AV_OPT_TYPE_BINARY ;
 scalar_t__ AV_OPT_TYPE_CONST ;
 scalar_t__ AV_OPT_TYPE_DICT ;
 scalar_t__ AV_OPT_TYPE_STRING ;
 int EINVAL ;
 int ENOMEM ;
 int av_dict_copy (int **,int *,int ) ;
 scalar_t__ av_dict_count (int *) ;
 int av_dict_free (int **) ;
 int av_freep (int **) ;
 int * av_memdup (int *,int) ;
 TYPE_1__* av_opt_next (void const*,TYPE_1__ const*) ;
 int * av_strdup (int *) ;
 int memcpy (void*,void*,int) ;
 int opt_size (scalar_t__) ;

int av_opt_copy(void *dst, const void *src)
{
    const AVOption *o = ((void*)0);
    const AVClass *c;
    int ret = 0;

    if (!src)
        return AVERROR(EINVAL);

    c = *(AVClass **)src;
    if (!c || c != *(AVClass **)dst)
        return AVERROR(EINVAL);

    while ((o = av_opt_next(src, o))) {
        void *field_dst = (uint8_t *)dst + o->offset;
        void *field_src = (uint8_t *)src + o->offset;
        uint8_t **field_dst8 = (uint8_t **)field_dst;
        uint8_t **field_src8 = (uint8_t **)field_src;

        if (o->type == AV_OPT_TYPE_STRING) {
            if (*field_dst8 != *field_src8)
                av_freep(field_dst8);
            *field_dst8 = av_strdup(*field_src8);
            if (*field_src8 && !*field_dst8)
                ret = AVERROR(ENOMEM);
        } else if (o->type == AV_OPT_TYPE_BINARY) {
            int len = *(int *)(field_src8 + 1);
            if (*field_dst8 != *field_src8)
                av_freep(field_dst8);
            *field_dst8 = av_memdup(*field_src8, len);
            if (len && !*field_dst8) {
                ret = AVERROR(ENOMEM);
                len = 0;
            }
            *(int *)(field_dst8 + 1) = len;
        } else if (o->type == AV_OPT_TYPE_CONST) {

        } else if (o->type == AV_OPT_TYPE_DICT) {
            AVDictionary **sdict = (AVDictionary **) field_src;
            AVDictionary **ddict = (AVDictionary **) field_dst;
            if (*sdict != *ddict)
                av_dict_free(ddict);
            *ddict = ((void*)0);
            av_dict_copy(ddict, *sdict, 0);
            if (av_dict_count(*sdict) != av_dict_count(*ddict))
                ret = AVERROR(ENOMEM);
        } else {
            int size = opt_size(o->type);
            if (size < 0)
                ret = size;
            else
                memcpy(field_dst, field_src, size);
        }
    }
    return ret;
}
