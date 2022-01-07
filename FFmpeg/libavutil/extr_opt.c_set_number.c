
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_4__ {int flags; int offset; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_OPT_FLAG_READONLY ;
 int EINVAL ;
 TYPE_1__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;
 int write_number (void*,TYPE_1__ const*,void*,double,int,int ) ;

__attribute__((used)) static int set_number(void *obj, const char *name, double num, int den, int64_t intnum,
                      int search_flags)
{
    void *dst, *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;

    if (o->flags & AV_OPT_FLAG_READONLY)
        return AVERROR(EINVAL);

    dst = ((uint8_t *)target_obj) + o->offset;
    return write_number(obj, o, dst, num, den, intnum);
}
