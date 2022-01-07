
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ AVCodecDescriptor ;


 TYPE_1__* avcodec_descriptor_next (TYPE_1__ const*) ;
 int strcmp (int ,char const*) ;

const AVCodecDescriptor *avcodec_descriptor_get_by_name(const char *name)
{
    const AVCodecDescriptor *desc = ((void*)0);

    while ((desc = avcodec_descriptor_next(desc)))
        if (!strcmp(desc->name, name))
            return desc;
    return ((void*)0);
}
