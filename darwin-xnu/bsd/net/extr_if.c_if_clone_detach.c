
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {scalar_t__ ifc_softc_size; int ifc_mutex; int ifc_zone; int ifc_units; } ;


 int FREE (int ,int ) ;
 int LIST_REMOVE (struct if_clone*,int ) ;
 int M_CLONE ;
 int if_cloners_count ;
 int ifc_list ;
 int ifnet_lock_group ;
 int lck_mtx_destroy (int *,int ) ;
 int zdestroy (int ) ;

void
if_clone_detach(struct if_clone *ifc)
{
 LIST_REMOVE(ifc, ifc_list);
 FREE(ifc->ifc_units, M_CLONE);
 if (ifc->ifc_softc_size != 0)
  zdestroy(ifc->ifc_zone);

 lck_mtx_destroy(&ifc->ifc_mutex, ifnet_lock_group);
 if_cloners_count--;
}
