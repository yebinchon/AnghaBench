
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVDES {int dummy; } ;
typedef int AVDES ;


 int * av_mallocz (int) ;

AVDES *av_des_alloc(void)
{
    return av_mallocz(sizeof(struct AVDES));
}
