
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UID ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ MXFStructuralComponent ;
typedef int MXFEssenceGroup ;
typedef int MXFContext ;


 int AnyType ;


 TYPE_1__* mxf_resolve_essence_group_choice (int *,int *) ;
 TYPE_1__* mxf_resolve_strong_ref (int *,int *,int ) ;

__attribute__((used)) static MXFStructuralComponent* mxf_resolve_sourceclip(MXFContext *mxf, UID *strong_ref)
{
    MXFStructuralComponent *component = ((void*)0);

    component = mxf_resolve_strong_ref(mxf, strong_ref, AnyType);
    if (!component)
        return ((void*)0);
    switch (component->type) {
        case 128:
            return component;
        case 129:
            return mxf_resolve_essence_group_choice(mxf, (MXFEssenceGroup*) component);
        default:
            break;
    }
    return ((void*)0);
}
