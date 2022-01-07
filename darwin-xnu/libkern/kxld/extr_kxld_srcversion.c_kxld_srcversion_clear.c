
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDsrcversion ;


 int bzero (int *,int) ;

void
kxld_srcversion_clear(KXLDsrcversion *srcversion)
{
    bzero(srcversion, sizeof(*srcversion));
}
