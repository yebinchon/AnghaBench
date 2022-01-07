
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatUnmount (char*) ;
 scalar_t__ iosuhaxMount ;
 int unmount_sd_fat (char*) ;

__attribute__((weak))
void __unmount_filesystems(void)
{
   unmount_sd_fat("sd");

}
