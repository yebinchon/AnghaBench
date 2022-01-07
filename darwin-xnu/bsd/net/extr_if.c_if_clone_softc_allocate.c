
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_softc_size; int ifc_zone; } ;


 int VERIFY (int ) ;
 int bzero (void*,int ) ;
 void* zalloc (int ) ;

void *
if_clone_softc_allocate(const struct if_clone *ifc)
{
 void *p_clone = ((void*)0);

 VERIFY(ifc != ((void*)0));

 p_clone = zalloc(ifc->ifc_zone);
 if (p_clone != ((void*)0))
  bzero(p_clone, ifc->ifc_softc_size);

 return (p_clone);
}
