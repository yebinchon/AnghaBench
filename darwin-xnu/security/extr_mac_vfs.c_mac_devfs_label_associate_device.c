
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devnode {int dn_label; } ;
typedef int dev_t ;


 int MAC_PERFORM (int ,int ,struct devnode*,int ,char const*) ;
 int devfs_label_associate_device ;
 int mac_device_enforce ;

void
mac_devfs_label_associate_device(dev_t dev, struct devnode *de,
    const char *fullpath)
{






 MAC_PERFORM(devfs_label_associate_device, dev, de, de->dn_label,
     fullpath);
}
