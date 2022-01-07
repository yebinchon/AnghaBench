
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int type; int offset; } ;
typedef TYPE_1__ AVOption ;
typedef int AVDictionary ;





 int av_dict_free (int **) ;
 int av_freep (int *) ;
 TYPE_1__* av_opt_next (void*,TYPE_1__ const*) ;

void av_opt_free(void *obj)
{
    const AVOption *o = ((void*)0);
    while ((o = av_opt_next(obj, o))) {
        switch (o->type) {
        case 128:
        case 130:
            av_freep((uint8_t *)obj + o->offset);
            break;

        case 129:
            av_dict_free((AVDictionary **)(((uint8_t *)obj) + o->offset));
            break;

        default:
            break;
        }
    }
}
