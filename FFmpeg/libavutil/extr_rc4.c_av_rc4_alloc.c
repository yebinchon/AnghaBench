
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVRC4 {int dummy; } ;
typedef int AVRC4 ;


 int * av_mallocz (int) ;

AVRC4 *av_rc4_alloc(void)
{
    return av_mallocz(sizeof(struct AVRC4));
}
