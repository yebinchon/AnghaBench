
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UID ;
struct TYPE_7__ {int input_segment_ref; } ;
struct TYPE_6__ {int type; } ;
typedef TYPE_1__ MXFTimecodeComponent ;
typedef TYPE_1__ MXFStructuralComponent ;
typedef TYPE_3__ MXFPulldownComponent ;
typedef int MXFContext ;


 int const AnyType ;


 TYPE_1__* mxf_resolve_strong_ref (int *,int *,int const) ;

__attribute__((used)) static MXFTimecodeComponent* mxf_resolve_timecode_component(MXFContext *mxf, UID *strong_ref)
{
    MXFStructuralComponent *component = ((void*)0);
    MXFPulldownComponent *pulldown = ((void*)0);

    component = mxf_resolve_strong_ref(mxf, strong_ref, AnyType);
    if (!component)
        return ((void*)0);

    switch (component->type) {
    case 128:
        return (MXFTimecodeComponent*)component;
    case 129:
        pulldown = (MXFPulldownComponent*)component;
        return mxf_resolve_strong_ref(mxf, &pulldown->input_segment_ref, 128);
    default:
        break;
    }
    return ((void*)0);
}
