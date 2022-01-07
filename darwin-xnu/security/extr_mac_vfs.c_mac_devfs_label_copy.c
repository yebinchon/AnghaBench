
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,struct label*) ;
 int devfs_label_copy ;
 int mac_device_enforce ;

void
mac_devfs_label_copy(struct label *src, struct label *dest)
{






 MAC_PERFORM(devfs_label_copy, src, dest);
}
