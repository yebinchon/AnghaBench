
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int i64; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ default_val; int * unit; } ;
typedef TYPE_2__ AVOption ;


 scalar_t__ AV_OPT_TYPE_CONST ;
 TYPE_2__* av_opt_find (void*,char const*,int *,int ,int ) ;
 scalar_t__ av_opt_get_int (void*,char const*,int ,int*) ;

int av_opt_flag_is_set(void *obj, const char *field_name, const char *flag_name)
{
    const AVOption *field = av_opt_find(obj, field_name, ((void*)0), 0, 0);
    const AVOption *flag = av_opt_find(obj, flag_name,
                                        field ? field->unit : ((void*)0), 0, 0);
    int64_t res;

    if (!field || !flag || flag->type != AV_OPT_TYPE_CONST ||
        av_opt_get_int(obj, field_name, 0, &res) < 0)
        return 0;
    return res & flag->default_val.i64;
}
