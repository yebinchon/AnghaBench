
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDversionmin ;


 int bzero (int *,int) ;

void
kxld_versionmin_clear(KXLDversionmin *versionmin)
{
    bzero(versionmin, sizeof(*versionmin));
}
