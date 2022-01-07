
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ AVOption ;
typedef int AVClass ;


 int AV_OPT_SEARCH_FAKE_OBJ ;
 TYPE_1__* av_opt_find2 (int const**,char const*,int *,int ,int ,int *) ;

void *av_opt_ptr(const AVClass *class, void *obj, const char *name)
{
    const AVOption *opt= av_opt_find2(&class, name, ((void*)0), 0, AV_OPT_SEARCH_FAKE_OBJ, ((void*)0));
    if(!opt)
        return ((void*)0);
    return (uint8_t*)obj + opt->offset;
}
