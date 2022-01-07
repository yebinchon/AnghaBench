
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int EINVAL ;
 int * av_opt_find2 (void*,char const*,int *,int ,int,void**) ;
 int av_opt_is_set_to_default (void*,int const*) ;

int av_opt_is_set_to_default_by_name(void *obj, const char *name, int search_flags)
{
    const AVOption *o;
    void *target;
    if (!obj)
        return AVERROR(EINVAL);
    o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target);
    if (!o)
        return AVERROR_OPTION_NOT_FOUND;
    return av_opt_is_set_to_default(target, o);
}
