
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVBlowfish {int dummy; } ;
typedef int AVBlowfish ;


 int * av_mallocz (int) ;

AVBlowfish *av_blowfish_alloc(void)
{
    return av_mallocz(sizeof(struct AVBlowfish));
}
