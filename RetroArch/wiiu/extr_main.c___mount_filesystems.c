
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatInitDefault () ;
 scalar_t__ iosuhaxMount ;
 int mount_sd_fat (char*) ;

__attribute__((weak))
void __mount_filesystems(void)
{






   mount_sd_fat("sd");

}
