
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ dn_links; struct TYPE_3__* dn_nextsibling; } ;
typedef TYPE_1__ devnode_t ;


 int devfs_nmountplanes ;

__attribute__((used)) static uint32_t
remove_notify_count(devnode_t *dnp)
{
 uint32_t notify_count = 0;
 devnode_t *dnp2;





 notify_count = devfs_nmountplanes;
 notify_count += dnp->dn_links;
 for (dnp2 = dnp->dn_nextsibling; dnp2 != dnp; dnp2 = dnp2->dn_nextsibling) {
  notify_count += dnp2->dn_links;
 }

 return notify_count;

}
