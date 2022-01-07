
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* name; scalar_t__ namelen; } ;
struct TYPE_8__ {TYPE_1__ Slnk; } ;
struct TYPE_9__ {scalar_t__ dn_type; TYPE_2__ dn_typeinfo; } ;
typedef TYPE_3__ devnode_t ;


 int DEVFS_DECR_NODES () ;
 int DEVFS_DECR_STRINGSPACE (scalar_t__) ;
 scalar_t__ DEV_SLNK ;
 int FREE (TYPE_3__*,int ) ;
 int M_DEVFSNODE ;
 int mac_devfs_label_destroy (TYPE_3__*) ;

void
devnode_free(devnode_t * dnp)
{



    if (dnp->dn_type == DEV_SLNK) {
        DEVFS_DECR_STRINGSPACE(dnp->dn_typeinfo.Slnk.namelen + 1);
 FREE(dnp->dn_typeinfo.Slnk.name, M_DEVFSNODE);
    }
    DEVFS_DECR_NODES();
    FREE(dnp, M_DEVFSNODE);
}
