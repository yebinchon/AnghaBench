
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_dev_remove_device (char const*) ;

int unmount_fs(const char *virt_name)
{
    return fs_dev_remove_device(virt_name);
}
