
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVAES {int dummy; } ;


 struct AVAES* av_mallocz (int) ;

struct AVAES *av_aes_alloc(void)
{
    return av_mallocz(sizeof(struct AVAES));
}
