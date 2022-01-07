
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dn_refcount; int dn_lflags; } ;
typedef TYPE_1__ devnode_t ;


 int DN_DELETE ;
 int devnode_free (TYPE_1__*) ;
 int panic (char*) ;

void
devfs_rele_node(devnode_t *dnp)
{
 dnp->dn_refcount--;
 if (dnp->dn_refcount < 0) {
  panic("devfs_rele_node: devnode with a negative refcount!\n");
 } else if ((dnp->dn_refcount == 0) && (dnp->dn_lflags & DN_DELETE)) {
  devnode_free(dnp);
 }

}
