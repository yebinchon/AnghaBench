
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDRelocator ;


 int bzero (int *,int) ;

void
kxld_relocator_clear(KXLDRelocator *relocator)
{
    bzero(relocator, sizeof(*relocator));
}
