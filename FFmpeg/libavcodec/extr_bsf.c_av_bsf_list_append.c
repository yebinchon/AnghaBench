
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_bsfs; int bsfs; } ;
typedef TYPE_1__ AVBSFList ;
typedef int AVBSFContext ;


 int av_dynarray_add_nofree (int *,int *,int *) ;

int av_bsf_list_append(AVBSFList *lst, AVBSFContext *bsf)
{
    return av_dynarray_add_nofree(&lst->bsfs, &lst->nb_bsfs, bsf);
}
