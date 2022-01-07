
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_zone; int ifc_softc_size; } ;


 int VERIFY (int) ;
 int bzero (void*,int ) ;
 int zfree (int ,void*) ;

void
if_clone_softc_deallocate(const struct if_clone *ifc, void *p_softc)
{
 VERIFY(ifc != ((void*)0) && p_softc != ((void*)0));
 bzero(p_softc, ifc->ifc_softc_size);
 zfree(ifc->ifc_zone, p_softc);
}
