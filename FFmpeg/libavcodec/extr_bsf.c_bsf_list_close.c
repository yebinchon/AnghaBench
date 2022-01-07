
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int nb_bsfs; int * item_name; int * bsfs; } ;
typedef TYPE_1__ BSFListContext ;
typedef TYPE_2__ AVBSFContext ;


 int av_bsf_free (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void bsf_list_close(AVBSFContext *bsf)
{
    BSFListContext *lst = bsf->priv_data;
    int i;

    for (i = 0; i < lst->nb_bsfs; ++i)
        av_bsf_free(&lst->bsfs[i]);
    av_freep(&lst->bsfs);
    av_freep(&lst->item_name);
}
