
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ syncpoints; } ;
typedef TYPE_1__ NUTContext ;


 int av_tree_destroy (scalar_t__) ;
 int av_tree_enumerate (scalar_t__,int *,int *,int ) ;
 int enu_free ;

void ff_nut_free_sp(NUTContext *nut)
{
    if (nut->syncpoints) {
        av_tree_enumerate(nut->syncpoints, ((void*)0), ((void*)0), enu_free);
        av_tree_destroy(nut->syncpoints);
    }
}
