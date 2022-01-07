
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ type; scalar_t__ unit; scalar_t__ name; } ;
typedef TYPE_1__ AVOption ;
typedef int AVClass ;


 int AV_OPT_SEARCH_CHILDREN ;
 int AV_OPT_SEARCH_FAKE_OBJ ;
 scalar_t__ AV_OPT_TYPE_CONST ;
 int * av_opt_child_class_next (int const*,int const*) ;
 void* av_opt_child_next (void*,void*) ;
 TYPE_1__* av_opt_next (void*,TYPE_1__ const*) ;
 int strcmp (scalar_t__,char const*) ;

const AVOption *av_opt_find2(void *obj, const char *name, const char *unit,
                             int opt_flags, int search_flags, void **target_obj)
{
    const AVClass *c;
    const AVOption *o = ((void*)0);

    if(!obj)
        return ((void*)0);

    c= *(AVClass**)obj;

    if (!c)
        return ((void*)0);

    if (search_flags & AV_OPT_SEARCH_CHILDREN) {
        if (search_flags & AV_OPT_SEARCH_FAKE_OBJ) {
            const AVClass *child = ((void*)0);
            while (child = av_opt_child_class_next(c, child))
                if (o = av_opt_find2(&child, name, unit, opt_flags, search_flags, ((void*)0)))
                    return o;
        } else {
            void *child = ((void*)0);
            while (child = av_opt_child_next(obj, child))
                if (o = av_opt_find2(child, name, unit, opt_flags, search_flags, target_obj))
                    return o;
        }
    }

    while (o = av_opt_next(obj, o)) {
        if (!strcmp(o->name, name) && (o->flags & opt_flags) == opt_flags &&
            ((!unit && o->type != AV_OPT_TYPE_CONST) ||
             (unit && o->type == AV_OPT_TYPE_CONST && o->unit && !strcmp(o->unit, unit)))) {
            if (target_obj) {
                if (!(search_flags & AV_OPT_SEARCH_FAKE_OBJ))
                    *target_obj = obj;
                else
                    *target_obj = ((void*)0);
            }
            return o;
        }
    }
    return ((void*)0);
}
