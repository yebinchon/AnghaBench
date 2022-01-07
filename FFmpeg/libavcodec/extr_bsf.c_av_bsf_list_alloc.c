
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBSFList ;


 int * av_mallocz (int) ;

AVBSFList *av_bsf_list_alloc(void)
{
    return av_mallocz(sizeof(AVBSFList));
}
