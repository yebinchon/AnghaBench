
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* dirlist; } ;
struct TYPE_8__ {TYPE_1__ Dir; } ;
struct TYPE_9__ {scalar_t__ dn_type; TYPE_2__ dn_typeinfo; } ;
typedef TYPE_3__ devnode_t ;
struct TYPE_10__ {TYPE_3__* de_dnp; } ;
typedef TYPE_4__ devdirent_t ;


 scalar_t__ DEV_DIR ;
 int dev_free_name (TYPE_4__*) ;

__attribute__((used)) static void
dev_free_hier(devdirent_t * dirent_p)
{
 devnode_t * dnp = dirent_p->de_dnp;

 if(dnp) {
  if(dnp->dn_type == DEV_DIR)
  {
   while(dnp->dn_typeinfo.Dir.dirlist)
   {
    dev_free_hier(dnp->dn_typeinfo.Dir.dirlist);
    dev_free_name(dnp->dn_typeinfo.Dir.dirlist);
   }
  }
 }
}
