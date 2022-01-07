
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ type; int flags; int offset; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_OPT_FLAG_READONLY ;
 scalar_t__ AV_OPT_TYPE_BINARY ;
 int EINVAL ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;
 int memcpy (int *,int const*,int) ;

int av_opt_set_bin(void *obj, const char *name, const uint8_t *val, int len, int search_flags)
{
    void *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);
    uint8_t *ptr;
    uint8_t **dst;
    int *lendst;

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;

    if (o->type != AV_OPT_TYPE_BINARY || o->flags & AV_OPT_FLAG_READONLY)
        return AVERROR(EINVAL);

    ptr = len ? av_malloc(len) : ((void*)0);
    if (len && !ptr)
        return AVERROR(ENOMEM);

    dst = (uint8_t **)(((uint8_t *)target_obj) + o->offset);
    lendst = (int *)(dst + 1);

    av_free(*dst);
    *dst = ptr;
    *lendst = len;
    if (len)
        memcpy(ptr, val, len);

    return 0;
}
