
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devnode {int dn_label; } ;


 int MAC_PERFORM (int ,char const*,int,struct devnode*,int ,char const*) ;
 int devfs_label_associate_directory ;
 int mac_device_enforce ;

void
mac_devfs_label_associate_directory(const char *dirname, int dirnamelen,
    struct devnode *de, const char *fullpath)
{






 MAC_PERFORM(devfs_label_associate_directory, dirname, dirnamelen, de,
     de->dn_label, fullpath);
}
