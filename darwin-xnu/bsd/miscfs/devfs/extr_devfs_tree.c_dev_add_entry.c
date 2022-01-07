
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct devfsmount {int dummy; } ;
typedef int devnode_type_t ;
struct TYPE_9__ {struct devfsmount* dn_dvm; } ;
typedef TYPE_1__ devnode_t ;
typedef int devdirent_t ;


 int dev_add_name (char const*,TYPE_1__*,int *,TYPE_1__*,int **) ;
 int dev_add_node (int,int *,TYPE_1__*,TYPE_1__**,struct devfsmount*) ;
 int devfs_dn_free (TYPE_1__*) ;
 int printf (char*,char const*,int) ;

int
dev_add_entry(const char *name, devnode_t * parent, int type, devnode_type_t * typeinfo,
       devnode_t * proto, struct devfsmount *dvm, devdirent_t * *nm_pp)
{
 devnode_t * dnp;
 int error = 0;

 if ((error = dev_add_node(type, typeinfo, proto, &dnp,
   (parent?parent->dn_dvm:dvm))) != 0)
 {
  printf("devfs: %s: base node allocation failed (Errno=%d)\n",
   name,error);
  return error;
 }
 if ((error = dev_add_name(name ,parent ,((void*)0), dnp, nm_pp)) != 0)
 {
  devfs_dn_free(dnp);
  printf("devfs: %s: name slot allocation failed (Errno=%d)\n",
         name,error);

 }
 return error;
}
