
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVAESCTR {int dummy; } ;


 struct AVAESCTR* av_mallocz (int) ;

struct AVAESCTR *av_aes_ctr_alloc(void)
{
    return av_mallocz(sizeof(struct AVAESCTR));
}
