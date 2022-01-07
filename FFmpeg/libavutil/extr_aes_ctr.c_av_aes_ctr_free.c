
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVAESCTR {int aes; } ;


 int av_free (struct AVAESCTR*) ;
 int av_freep (int *) ;

void av_aes_ctr_free(struct AVAESCTR *a)
{
    if (a) {
        av_freep(&a->aes);
        av_free(a);
    }
}
