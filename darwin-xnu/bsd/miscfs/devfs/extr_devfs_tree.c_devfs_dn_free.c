
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dn_links; scalar_t__ dn_refcount; int dn_lflags; struct TYPE_4__** dn_prevsiblingp; struct TYPE_4__* dn_nextsibling; } ;
typedef TYPE_1__ devnode_t ;


 int DN_DELETE ;
 int devnode_free (TYPE_1__*) ;

__attribute__((used)) static void
devfs_dn_free(devnode_t * dnp)
{
 if(--dnp->dn_links <= 0 )
 {

  if (dnp->dn_nextsibling != dnp) {
   devnode_t * * prevp = dnp->dn_prevsiblingp;
   *prevp = dnp->dn_nextsibling;
   dnp->dn_nextsibling->dn_prevsiblingp = prevp;

  }


  if (dnp->dn_refcount == 0) {
      devnode_free(dnp);
  }
  else {
      dnp->dn_lflags |= DN_DELETE;
  }
 }
}
