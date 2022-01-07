
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* name; int namelen; } ;
struct TYPE_13__ {TYPE_1__ Slnk; } ;
typedef TYPE_2__ devnode_type_t ;
struct TYPE_14__ {int dn_mode; int dn_gid; int dn_uid; } ;
typedef TYPE_3__ devnode_t ;
struct TYPE_15__ {TYPE_3__* de_dnp; } ;
typedef TYPE_4__ devdirent_t ;


 int DEV_SLNK ;
 int dev_add_entry (char*,TYPE_3__*,int ,TYPE_2__*,int *,int *,TYPE_4__**) ;
 int dn_copy_times (TYPE_3__*,TYPE_3__*) ;
 int strlen (char*) ;

int
devfs_make_symlink(devnode_t *dir_p, char *name, int mode, char *target, devdirent_t **newent)
{
 int error = 0;
 devnode_type_t typeinfo;
 devdirent_t * nm_p;
 devnode_t * dev_p;

 typeinfo.Slnk.name = target;
 typeinfo.Slnk.namelen = strlen(target);

 error = dev_add_entry(name, dir_p, DEV_SLNK,
         &typeinfo, ((void*)0), ((void*)0), &nm_p);
 if (error) {
     goto failure;
 }
 dev_p = nm_p->de_dnp;
 dev_p->dn_uid = dir_p->dn_uid;
 dev_p->dn_gid = dir_p->dn_gid;
 dev_p->dn_mode = mode;
 dn_copy_times(dev_p, dir_p);

 if (newent) {
  *newent = nm_p;
 }

failure:

 return error;
}
