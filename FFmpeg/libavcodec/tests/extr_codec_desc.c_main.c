
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ id; int name; } ;
typedef TYPE_1__ AVCodecDescriptor ;


 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*,int ,...) ;
 TYPE_1__ const* avcodec_descriptor_get (scalar_t__) ;
 TYPE_1__ const* avcodec_descriptor_get_by_name (int ) ;
 TYPE_1__* avcodec_descriptor_next (TYPE_1__ const*) ;

int main(int argc, char **argv)
{
    const AVCodecDescriptor *old_desc = ((void*)0), *desc;

    while (desc = avcodec_descriptor_next(old_desc)) {
        if (old_desc && old_desc->id >= desc->id) {
            av_log(((void*)0), AV_LOG_FATAL, "Unsorted codec_descriptors '%s' and '%s'.\n", old_desc->name, desc->name);
            return 1;
        }

        if (avcodec_descriptor_get(desc->id) != desc) {
            av_log(((void*)0), AV_LOG_FATAL, "avcodec_descriptor_get() failed with '%s'.\n", desc->name);
            return 1;
        }

        if (avcodec_descriptor_get_by_name(desc->name) != desc) {
            av_log(((void*)0), AV_LOG_FATAL, "avcodec_descriptor_get_by_name() failed with '%s'.\n", desc->name);
            return 1;
        }

        old_desc = desc;
    }

    return 0;
}
