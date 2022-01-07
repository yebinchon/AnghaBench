
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devnode {int * dn_label; } ;


 int mac_devfs_label_free (int *) ;

void
mac_devfs_label_destroy(struct devnode *de)
{
 if (de->dn_label != ((void*)0)) {
  mac_devfs_label_free(de->dn_label);
  de->dn_label = ((void*)0);
 }
}
