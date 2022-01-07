
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dn_refcount; } ;
typedef TYPE_1__ devnode_t ;



void
devfs_ref_node(devnode_t *dnp)
{
 dnp->dn_refcount++;
}
