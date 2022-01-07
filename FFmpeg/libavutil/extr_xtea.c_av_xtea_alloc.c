
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVXTEA {int dummy; } ;
typedef int AVXTEA ;


 int * av_mallocz (int) ;

AVXTEA *av_xtea_alloc(void)
{
    return av_mallocz(sizeof(struct AVXTEA));
}
