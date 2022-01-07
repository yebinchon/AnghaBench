
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBSFContext ;


 int av_bsf_alloc (int *,int **) ;
 int ff_list_bsf ;

int av_bsf_get_null_filter(AVBSFContext **bsf)
{
    return av_bsf_alloc(&ff_list_bsf, bsf);
}
