
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fc; } ;
struct TYPE_8__ {scalar_t__ type; int sub_descriptors_count; int linked_track_id; int * sub_descriptors_refs; } ;
typedef TYPE_1__ MXFDescriptor ;
typedef TYPE_2__ MXFContext ;


 int AV_LOG_ERROR ;
 scalar_t__ Descriptor ;
 scalar_t__ MultipleDescriptor ;
 int av_log (int ,int ,char*) ;
 TYPE_1__* mxf_resolve_strong_ref (TYPE_2__*,int *,scalar_t__) ;

__attribute__((used)) static MXFDescriptor* mxf_resolve_multidescriptor(MXFContext *mxf, MXFDescriptor *descriptor, int track_id)
{
    MXFDescriptor *sub_descriptor = ((void*)0);
    int i;

    if (!descriptor)
        return ((void*)0);

    if (descriptor->type == MultipleDescriptor) {
        for (i = 0; i < descriptor->sub_descriptors_count; i++) {
            sub_descriptor = mxf_resolve_strong_ref(mxf, &descriptor->sub_descriptors_refs[i], Descriptor);

            if (!sub_descriptor) {
                av_log(mxf->fc, AV_LOG_ERROR, "could not resolve sub descriptor strong ref\n");
                continue;
            }
            if (sub_descriptor->linked_track_id == track_id) {
                return sub_descriptor;
            }
        }
    } else if (descriptor->type == Descriptor)
        return descriptor;

    return ((void*)0);
}
