
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int structural_components_count; int * structural_components_refs; } ;
struct TYPE_8__ {int descriptor_ref; } ;
struct TYPE_7__ {int source_package_uid; int source_package_ul; } ;
typedef TYPE_1__ MXFStructuralComponent ;
typedef TYPE_2__ MXFPackage ;
typedef TYPE_3__ MXFEssenceGroup ;
typedef int MXFDescriptor ;
typedef int MXFContext ;


 int Descriptor ;
 int SourceClip ;
 TYPE_2__* mxf_resolve_source_package (int *,int ,int ) ;
 void* mxf_resolve_strong_ref (int *,int *,int ) ;

__attribute__((used)) static MXFStructuralComponent* mxf_resolve_essence_group_choice(MXFContext *mxf, MXFEssenceGroup *essence_group)
{
    MXFStructuralComponent *component = ((void*)0);
    MXFPackage *package = ((void*)0);
    MXFDescriptor *descriptor = ((void*)0);
    int i;

    if (!essence_group || !essence_group->structural_components_count)
        return ((void*)0);



    for (i =0; i < essence_group->structural_components_count; i++){
        component = mxf_resolve_strong_ref(mxf, &essence_group->structural_components_refs[i], SourceClip);
        if (!component)
            continue;

        if (!(package = mxf_resolve_source_package(mxf, component->source_package_ul, component->source_package_uid)))
            continue;

        descriptor = mxf_resolve_strong_ref(mxf, &package->descriptor_ref, Descriptor);
        if (descriptor)
            return component;
    }
    return ((void*)0);
}
