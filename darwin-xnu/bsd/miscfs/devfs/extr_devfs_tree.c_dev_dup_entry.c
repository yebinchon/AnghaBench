
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct devfsmount {int dummy; } ;
struct TYPE_11__ {TYPE_4__* dirlist; } ;
struct TYPE_12__ {TYPE_1__ Dir; } ;
struct TYPE_13__ {int dn_type; TYPE_2__ dn_typeinfo; struct devfsmount* dn_dvm; } ;
typedef TYPE_3__ devnode_t ;
struct TYPE_14__ {char* de_name; TYPE_3__* de_dnp; struct TYPE_14__* de_next; } ;
typedef TYPE_4__ devdirent_t ;


 int DEV_DIR ;
 int ENOMEM ;
 int dev_add_entry (char*,TYPE_3__*,int,int *,TYPE_3__*,struct devfsmount*,TYPE_4__**) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
dev_dup_entry(devnode_t * parent, devdirent_t * back, devdirent_t * *dnm_pp,
       struct devfsmount *dvm)
{
 devdirent_t * entry_p = ((void*)0);
 devdirent_t * newback;
 devdirent_t * newfront;
 int error;
 devnode_t * dnp = back->de_dnp;
 int type = dnp->dn_type;





    error = dev_add_entry(back->de_name, parent, type, ((void*)0), dnp,
                          parent?parent->dn_dvm:dvm, &entry_p);
    if (!error && (entry_p == ((void*)0))) {
        error = ENOMEM;
    }
 if (error != 0) {
  printf("duplicating %s failed\n",back->de_name);
        goto out;
 }





 if(dvm) {
  entry_p->de_dnp->dn_dvm = dvm;
 }






 if (type == DEV_DIR)
 {
  for(newback = back->de_dnp->dn_typeinfo.Dir.dirlist;
    newback; newback = newback->de_next)
  {
   if((error = dev_dup_entry(entry_p->de_dnp,
         newback, &newfront, ((void*)0))) != 0)
   {
    break;
   }
  }
 }
out:
 *dnm_pp = entry_p;
 return error;
}
